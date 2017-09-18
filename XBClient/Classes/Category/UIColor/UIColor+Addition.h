//
//  UIColor+Addition.h
//  XBClient
//
//  Created by yongche_w on 2017/9/18.
//  Copyright © 2017年 Map. All rights reserved.
//

#import <Foundation/Foundation.h>


//十六进制的颜色
#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]


@interface UIColor(Addition)


//  #fafafa
+ (UIColor *)colorWithHexString:(NSString *)hexString;


@end
