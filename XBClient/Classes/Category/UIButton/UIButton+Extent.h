//
//  UIButton+Extent.h
//  XBClient
//
//  Created by yongche_w on 2017/10/12.
//  Copyright © 2017年 Map. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIButton(Extent)

+ (UIButton*)createButtonWithTarget:(id)target
                           selector:(SEL)selector;

+ (UIButton*)createButtonWithTarget:(id)target
                           selector:(SEL)selector
                      controlEvents:(UIControlEvents)controlEvents;

@end
