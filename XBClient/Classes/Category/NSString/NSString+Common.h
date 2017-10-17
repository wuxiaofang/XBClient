//
//  NSString+Common.h
//  XBClient
//
//  Created by yongche_w on 2017/10/17.
//  Copyright © 2017年 Map. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString(Common)

- (CGFloat)heigthWithFont:(UIFont *)font
      constrainedToWidth:(CGFloat)width
           lineBreakMode:(NSLineBreakMode)lineBreakMode
           textAlignment:(NSTextAlignment)textAlignment;

- (CGFloat)widthWithFont:(UIFont *)font
     constrainedToHeigth:(CGFloat)heigth
            lineBreakMode:(NSLineBreakMode)lineBreakMode
            textAlignment:(NSTextAlignment)textAlignment;

@end
