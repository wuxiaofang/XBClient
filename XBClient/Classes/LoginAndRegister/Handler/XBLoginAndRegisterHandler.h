//
//  XBLoginAndRegisterHandler.h
//  XBClient
//
//  Created by yongche_w on 2017/10/12.
//  Copyright © 2017年 Map. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XBLoginAndRegisterDefine.h"

@interface XBLoginAndRegisterHandler : NSObject

+ (void)presentLoginAndRegisterVCWithRootVC:(UINavigationController*)rootVC
                         loginFinishedBlock:(LoginFinishedBlock)loginFinishedBlock;

@end
