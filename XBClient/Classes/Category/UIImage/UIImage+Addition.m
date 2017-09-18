//
//  UIImage+Addition.m
//  XBClient
//
//  Created by yongche_w on 2017/9/18.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "UIImage+Addition.h"

@implementation UIImage(Addition)

+(UIImage *)image:(UIImage *)img scaleToSize:(CGSize)size
{
    // 创建一个bitmap的context
    // 并把它设置成为当前正在使用的context
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    //    UIGraphicsBeginImageContext(size);
    // 绘制改变大小的图片
    [img drawInRect:CGRectMake(0, 0, size.width, size.height)];
    // 从当前context中创建一个改变大小后的图片
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // 使当前的context出堆栈
    UIGraphicsEndImageContext();
    // 返回新的改变大小后的图片
    return scaledImage;
}

+(UIImage *)image:(UIImage *)img scale:(CGFloat)scale{
    
    CGSize size=CGSizeMake(img.size.width*scale, img.size.height*scale);
    return [self image:img scaleToSize:size];
    
}




+ (UIImage*)xb_imageWithColor:(UIColor *)color size:(CGSize)size
{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIImage *image = nil;
    UIGraphicsBeginImageContextWithOptions(rect.size,NO,[UIScreen mainScreen].scale); {
        
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(context, [color CGColor]);
        CGContextFillRect(context, rect);
        image = UIGraphicsGetImageFromCurrentImageContext();
    }
    UIGraphicsEndImageContext();
    return image;
    
}


+ (UIImage*)xb_imageWithColor:(UIColor*)color
{
    
    return [UIImage xb_imageWithColor:color size:CGSizeMake(10, 10)];
}

@end
