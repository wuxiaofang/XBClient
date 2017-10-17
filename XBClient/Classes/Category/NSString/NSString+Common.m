//
//  NSString+Common.m
//  XBClient
//
//  Created by yongche_w on 2017/10/17.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "NSString+Common.h"

@implementation NSString(Common)

- (CGFloat)heigthWithFont:(UIFont *)font
      constrainedToWidth:(CGFloat)width
           lineBreakMode:(NSLineBreakMode)lineBreakMode
           textAlignment:(NSTextAlignment)textAlignment
{
    NSMutableParagraphStyle *style = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    style.lineBreakMode = lineBreakMode;
    style.alignment = textAlignment;
    
    NSAttributedString *string = [[NSAttributedString alloc]initWithString:self attributes:@{NSFontAttributeName:font, NSParagraphStyleAttributeName:style}];
    CGSize newsize =  [string boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading context:nil].size;

    return ceil(newsize.height) + 1;
    
}

- (CGFloat)widthWithFont:(UIFont *)font
     constrainedToHeigth:(CGFloat)heigth
           lineBreakMode:(NSLineBreakMode)lineBreakMode
           textAlignment:(NSTextAlignment)textAlignment
{
    NSMutableParagraphStyle *style = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    style.lineBreakMode = lineBreakMode;
    style.alignment = textAlignment;
    
    NSAttributedString *string = [[NSAttributedString alloc]initWithString:self attributes:@{NSFontAttributeName:font, NSParagraphStyleAttributeName:style}];
    CGSize newsize =  [string boundingRectWithSize:CGSizeMake(MAXFLOAT,heigth) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading context:nil].size;
    
    return ceil(newsize.width) + 1;
    
}

@end
