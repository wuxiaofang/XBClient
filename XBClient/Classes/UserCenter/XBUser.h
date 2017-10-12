//
//  XBUser.h
//  XBClient
//
//  Created by yongche_w on 2017/10/9.
//  Copyright © 2017年 Map. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XBUser : NSObject

+ (XBUser*)instance;

- (BOOL)isLogin;

- (void)logout;

@end
