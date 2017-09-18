//
//  UIImage+Addition.h
//  XBClient
//
//  Created by yongche_w on 2017/9/18.
//  Copyright © 2017年 Map. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage(Addition)

/**
 *  传入一张图片,缩放到指定大小
 *
 *  @param img  传入的图片
 *  @param size 指定缩放到的尺寸
 *
 *  @return 返回指定大小的图片
 */
+(UIImage *)image:(UIImage *)img scaleToSize:(CGSize)size;
/**
 *  传入一张图片,缩放到指定比例
 *
 *  @param img   需要缩放的图片
 *  @param scale 缩放的比例
 *
 *  @return 返回指定缩放比例的图片
 */
+(UIImage *)image:(UIImage *)img scale:(CGFloat)scale;




+(UIImage *)xb_imageWithColor:(UIColor *)color size:(CGSize)size;

+(UIImage*)xb_imageWithColor:(UIColor*)color;

@end
