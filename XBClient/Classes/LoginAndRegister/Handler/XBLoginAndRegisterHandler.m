//
//  XBLoginAndRegisterHandler.m
//  XBClient
//
//  Created by yongche_w on 2017/10/12.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBLoginAndRegisterHandler.h"
#import "XBLoginAndRegisterViewController.h"

@implementation XBLoginAndRegisterHandler

+ (void)presentLoginAndRegisterVCWithRootVC:(UINavigationController*)rootVC
                         loginFinishedBlock:(LoginFinishedBlock)loginFinishedBlock
{
    XBLoginAndRegisterViewController* loginAndRegisterViewController = [[XBLoginAndRegisterViewController alloc] init];
    loginAndRegisterViewController.loginFinishedBlock = loginFinishedBlock;
    [rootVC presentViewController:loginAndRegisterViewController animated:YES completion:nil];
    
}

@end
