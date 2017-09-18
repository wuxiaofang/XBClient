//
//  UIView+Frame.m
//  XBClient
//
//  Created by yongche_w on 2017/9/18.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView(Frame)

- (void)setYd_x:(CGFloat)yd_x
{
    CGRect frame = self.frame;
    frame.origin.x = yd_x;
    self.frame = frame;
}

- (CGFloat)yd_x
{
    return self.frame.origin.x;
}

- (void)setYd_y:(CGFloat)yd_y
{
    CGRect frame = self.frame;
    frame.origin.y = yd_y;
    self.frame = frame;
}

- (CGFloat)yd_y
{
    return self.frame.origin.y;
}

- (void)setYd_width:(CGFloat)yd_w
{
    CGRect frame = self.frame;
    frame.size.width = yd_w;
    self.frame = frame;
}

- (CGFloat)yd_width
{
    return self.frame.size.width;
}

- (void)setYd_height:(CGFloat)yd_h
{
    CGRect frame = self.frame;
    frame.size.height = yd_h;
    self.frame = frame;
}

- (CGFloat)yd_height
{
    return self.frame.size.height;
}

- (CGFloat)yd_left {
    return self.frame.origin.x;
}

- (void)setYd_left:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)yd_right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setYd_right:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)yd_top {
    return self.frame.origin.y;
}

- (void)setYd_top:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)yd_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setYd_bottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)yd_centerX {
    return self.center.x;
}

- (void)setYd_centerX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)yd_centerY {
    return self.center.y;
}

- (void)setYd_centerY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}

@end
