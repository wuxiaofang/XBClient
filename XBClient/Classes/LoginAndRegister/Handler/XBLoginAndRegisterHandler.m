//
//  XBLoginAndRegisterHandler.m
//  XBClient
//
//  Created by yongche_w on 2017/10/12.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBLoginAndRegisterHandler.h"
#import "XBLoginAndRegisterViewController.h"

@interface XBLoginAndRegisterHandler()

@property (nonatomic, strong) NSTimer* countdownTimer;

@property (nonatomic, assign) NSInteger countdown;

@property (nonatomic, copy) CountdownCallback countdownCallback;

@property (nonatomic, copy) LoginFinishedBlock loginFinishedBlock;

@end



@implementation XBLoginAndRegisterHandler


+ (XBLoginAndRegisterHandler*)instance
{
    static XBLoginAndRegisterHandler* _instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[XBLoginAndRegisterHandler alloc] init];
    });
    return _instance;
}


+ (void)presentLoginAndRegisterVCWithRootVC:(UINavigationController*)rootVC
                         loginFinishedBlock:(LoginFinishedBlock)loginFinishedBlock
{
    
    
    XBLoginAndRegisterViewController* loginAndRegisterViewController = [[XBLoginAndRegisterViewController alloc] init];
    [XBLoginAndRegisterHandler instance].loginFinishedBlock = loginFinishedBlock;
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController:loginAndRegisterViewController];
    
    [rootVC presentViewController:nav animated:YES completion:nil];
    
}


#pragma mark - 倒计时

- (void)startCountdownTimer
{
    [self stopCountdownTimer];
    if(![self.countdownTimer isValid]){
        self.countdown = 60;
        self.countdownTimer = [NSTimer scheduledTimerWithTimeInterval:1
                                                               target:self
                                                             selector:@selector(countDownTimerSelector)
                                                             userInfo:nil
                                                              repeats:YES];
        if(self.countdownCallback){
            self.countdownCallback(self.countdown);
        }
    }
}

- (void)endCountdownTimer
{
    [self stopCountdownTimer];
    self.countdown = 0;
    if(self.countdownCallback){
        self.countdownCallback(self.countdown);
    }
}

- (void)stopCountdownTimer
{
    if([self.countdownTimer isValid]){
        [self.countdownTimer invalidate];
        self.countdownTimer = nil;
    }
}

- (void)countDownTimerSelector
{
    self.countdown--;
    if(self.countdown == 0){
        [self stopCountdownTimer];
    }
    if(self.countdownCallback){
        self.countdownCallback(self.countdown);
    }
}

- (void)setCountdownTimerCallback:(CountdownCallback)countdownCallback
{
    self.countdownCallback = countdownCallback;
    if(self.countdownCallback){
        self.countdownCallback(self.countdown);
    }
}

- (BOOL)isCountdownEnd
{
    if(self.countdown == 0){
        return YES;
    }
    return NO;
}


- (void)loginFinishCallback
{
    if(self.loginFinishedBlock){
        self.loginFinishedBlock();
        self.loginFinishedBlock = nil;
    }
    
}
@end
