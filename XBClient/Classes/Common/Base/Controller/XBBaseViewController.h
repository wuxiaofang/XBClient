//
//  XBBaseViewController.h
//  XBClient
//
//  Created by yongche_w on 2017/10/9.
//  Copyright © 2017年 Map. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XBBaseViewController : UIViewController



- (void)setCustomLabelForNavTitle:(NSString*)title;

- (void)showBackButtonWithImage;
- (void)showBackButtonWithTitle:(NSString *)title;
- (void)backBarButtonPressed;


- (void)showRightButtonWithTitle:(NSString *)title;
- (void)rightButtonPress;

@end
