import os
import cv2
import numpy as np
from pycocotools.coco import COCO
from scipy.ndimage import rotate

# 定义细长目标判定函数
def get_aspect_ratio(mask_contours, angle_step=1):
    """
    判断目标是否细长（基于最小外接矩形的主轴方向）
    :param mask_contours: 目标轮廓坐标列表（由YOLO等模型生成的边界框转换而来）
    :param threshold: 长宽比阈值，默认3.0
    :param angle_step: 旋转角度步长（度），默认1度
    :return: True if long and thin, False otherwise
    """
    if len(mask_contours) < 2:
        return False

    # 轮廓转numpy数组
    points = np.array(mask_contours).reshape(-1, 2)
    cov = np.cov(points, rowvar=False)
    eigenvalues, eigenvectors = np.linalg.eig(cov)
    main_axis = eigenvectors[:, np.argmax(eigenvalues)]
    angle = np.arctan2(main_axis[1], main_axis[0]) * 180 / np.pi

    # 旋转轮廓使主轴水平
    rotated_points = rotate_points(points, -angle)

    # 计算旋转后的边界框
    x_coords = rotated_points[:, 0]
    y_coords = rotated_points[:, 1]
    min_x, max_x = np.min(x_coords), np.max(x_coords)
    min_y, max_y = np.min(y_coords), np.max(y_coords)

    width = max_x - min_x
    height = max_y - min_y

    if width == 0 or height == 0:
        return False

    aspect_ratio = width / height
    return aspect_ratio

def rotate_points(points, angle):
    """旋转点集"""
    angle_rad = np.radians(angle)
    rotation_matrix = np.array([
        [np.cos(angle_rad), -np.sin(angle_rad)],
        [np.sin(angle_rad), np.cos(angle_rad)]
    ])
    return np.dot(points, rotation_matrix.T)


def read_mask_contours_from_txt(txt_path):
    """
    从txt文件中按行读取mask_contours
    :param txt_path: txt文件路径
    :return: 包含所有mask_contours的列表，每个mask_contours是一个坐标列表
    """
    mask_contours_list = []
    with open(txt_path, 'r') as f:
        for line in f:
            parts = line.strip().split()
            if len(parts) < 2:  # 跳过无效行
                continue
            label = parts[0]
            coords = list(map(float, parts[1:]))
            # 将坐标转换为(x1,y1,x2,y2,...)格式的列表
            mask_contours = []
            for i in range(0, len(coords), 2):
                x = coords[i]
                y = coords[i + 1]
                mask_contours.extend([x, y])
            mask_contours_list.append(mask_contours)
    return mask_contours_list

def read_image_paths_from_txt(data_root, txt_path):
    """
    从txt文件中读取图片路径
    :param txt_path: txt文件路径
    :return: 包含所有图片路径的列表
    """
    with open(txt_path, 'r') as f:
        return [os.path.join(data_root, line.strip()) for line in f if line.strip()]

def check_slender_targets_from_txt(data_root, image_paths_txt, save_dir):
    # 创建保存图像的目录

    # 为 train 和 val 分别打开文件用于写入图片路径
    train_file = open('train_slim_obj.txt', 'w')
    val_file = open('val_slim_obj.txt', 'w')

    image_paths = read_image_paths_from_txt(data_root, image_paths_txt)
    max_ar = 1.0
    for img_path in image_paths:
        if not os.path.exists(img_path):
            continue
        # 假设标签文件路径与图片路径对应，将 images 替换为 labels，扩展名改为 .txt
        txt_path = img_path.replace('images', 'labels').rsplit('.', 1)[0] + '.txt'
        if not os.path.exists(txt_path):
            continue
        mask_contours_list = read_mask_contours_from_txt(txt_path)
        has_slender_target = False
        img = cv2.imread(img_path)  # 读取图像
        h, w = img.shape[:2]  # 获取图像的高度和宽度

        for mask_contours in mask_contours_list:
            # 缩放坐标到原图尺寸
            scaled_contours = [int(coord * (w if i % 2 == 0 else h)) for i, coord in enumerate(mask_contours)]
            ar = get_aspect_ratio(scaled_contours)
            ret = ar > 20
            if ret:
                has_slender_target = True
                # print(f"get_aspect_ratio:{txt_path}")
                # # 将缩放后的轮廓坐标转换为 OpenCV 所需的格式
                # contours = np.array(scaled_contours).reshape(-1, 1, 2).astype(np.int32)
                # # 绘制轮廓
                # cv2.drawContours(img, [contours], -1, (0, 255, 0), 2)

        # if has_slender_target:
        #     # # 构建保存路径
        #     os.makedirs(os.path.join(save_dir, subset), exist_ok=True)
        #     save_path = os.path.join(save_dir, subset, img_file)
        #     # 保存绘制了轮廓的图像
        #     cv2.imwrite(save_path, img)
            # print(f"Saved image with slender targets: {save_path}")
            # relative_img_path = os.path.join('.', os.path.relpath(img_path, dataset_root))
            # print(f"has_slender_target:{relative_img_path}")
            # # 根据子集将图片路径写入对应的文件
            # if subset == 'train2017':
            #     train_file.write(f"{relative_img_path}\n")
            # elif subset == 'val2017':
            #     val_file.write(f"{relative_img_path}\n")

    print(f"max_ar:{max_ar}")
    # 关闭文件
    train_file.close()
    val_file.close()

# 执行遍历
data_root = "/workspace/data/coco/"
image_paths_txt = '/workspace/data/coco/train_slim_obj.txt'  # 替换为你的图片路径txt文件路径
check_slender_targets_from_txt(data_root, image_paths_txt, save_dir="slender_targets")

