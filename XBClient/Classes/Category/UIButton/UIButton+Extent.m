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

@end
