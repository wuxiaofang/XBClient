//
//  XBLoginAndRegisterDefine.h
//  XBClient
//
//  Created by yongche_w on 2017/10/12.
//  Copyright © 2017年 Map. All rights reserved.
//

#ifndef XBLoginAndRegisterDefine_h
#define XBLoginAndRegisterDefine_h

//登录完成
typedef void(^LoginFinishedBlock)();

//倒计时
typedef void(^CountdownCallback)(NSInteger countDown);


//调起这个注册VC的调用者的类型
typedef enum{
    
    CallerByRegister,           //注册调用
    CallerByFrogetPassword    //忘记密码调用
}XBCallerType;

#endif /* XBLoginAndRegisterDefine_h */
