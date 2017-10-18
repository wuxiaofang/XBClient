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


+ (XBLoginAndRegisterHandler*)instance;

+ (void)presentLoginAndRegisterVCWithRootVC:(UINavigationController*)rootVC
                         loginFinishedBlock:(LoginFinishedBlock)loginFinishedBlock;



//开始短信验证码倒计时
- (void)startCountdownTimer;

//停止短信验证码倒计时
- (void)endCountdownTimer;

//倒计时是否结束
- (BOOL)isCountdownEnd;

//倒计时的回调
- (void)setCountdownTimerCallback:(CountdownCallback)countdownCallback;

- (void)loginFinishCallback;

@end
