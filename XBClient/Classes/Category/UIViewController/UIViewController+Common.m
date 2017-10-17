//
//  UIViewController+Common.m
//  XBClient
//
//  Created by yongche_w on 2017/10/17.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "UIViewController+Common.h"

@implementation UIViewController(Common)

- (void)popToViewControllerWithClassName:(NSString*)className
{
    UINavigationController* nav = nil;
    if([self isKindOfClass:[UINavigationController class]]){
        
        nav = (UINavigationController*)self;
    }else{
        
        nav = self.navigationController;
    }
    UIViewController* popVC = nil;
    if(nav && className.length > 0){
        for(UIViewController* vc in nav.viewControllers){
            
            if([NSStringFromClass([vc class]) isEqualToString:className]){
                popVC = vc;
                
            }
        }
        
        
    }
    
    if(popVC){
        
        [nav popToViewController:popVC animated:YES];
    }
    
}

@end
