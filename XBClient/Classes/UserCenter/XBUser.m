//
//  XBUser.m
//  XBClient
//
//  Created by yongche_w on 2017/10/9.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBUser.h"

@implementation XBUser


+(XBUser*)instance
{
    static dispatch_once_t onceToken;
    static XBUser* _instance = nil;;
    dispatch_once(&onceToken, ^{
        _instance = [[XBUser alloc] init];
    });
    return _instance;
}

- (BOOL)isLogin
{
    return YES;
}

- (void)logout
{
    
}

@end
