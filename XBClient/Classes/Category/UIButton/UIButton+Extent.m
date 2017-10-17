//
//  UIButton+Extent.m
//  XBClient
//
//  Created by yongche_w on 2017/10/12.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "UIButton+Extent.h"

@implementation UIButton(Extent)

+ (UIButton*)createButtonWithTarget:(id)target
                           selector:(SEL)selector
{
    return [UIButton createButtonWithTarget:target
                                   selector:selector
                              controlEvents:UIControlEventTouchUpInside];
}

+ (UIButton*)createButtonWithTarget:(id)target
                           selector:(SEL)selector
                      controlEvents:(UIControlEvents)controlEvents
{
    UIButton* button = [[UIButton alloc] init];
    [button addTarget:target action:selector forControlEvents:controlEvents];
    return button;

}

- (void)setBackGroundColorForNormal:(UIColor*)color
{
    [self setBackGroundImageForNormal:[UIImage xb_imageWithColor:color]];
    
}

- (void)setBackGroundColorForHighlighted:(UIColor*)color
{
    [self setBackGroundImageForHighlighted:[UIImage xb_imageWithColor:color]];
    
}

- (void)setBackGroundImageForNormal:(UIImage*)image
{
    
    [self setBackgroundImage:image forState:UIControlStateNormal];
}

- (void)setBackGroundImageForHighlighted:(UIImage*)image
{
    [self setBackgroundImage:image forState:UIControlStateHighlighted];
    
}


- (void)setTitleForNormal:(NSString*)title
{
    [self setTitle:title forState:UIControlStateNormal];
    
}

- (void)setTitleForHighlighted:(NSString*)title
{
    [self setTitle:title forState:UIControlStateHighlighted];
    
}

- (void)setTitleColorForNormal:(UIColor*)titleColor
{
    [self setTitleColor:titleColor forState:UIControlStateNormal];
    
}

- (void)setTitleColorForHighlighted:(UIColor*)titleColor
{
    [self setTitleColor:titleColor forState:UIControlStateHighlighted];
}

@end
