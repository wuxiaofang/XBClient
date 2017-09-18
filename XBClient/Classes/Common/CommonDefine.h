//
//  CommonDefine.h
//  XBClient
//
//  Created by yongche_w on 2017/9/18.
//  Copyright © 2017年 Map. All rights reserved.
//

#ifndef CommonDefine_h
#define CommonDefine_h



//NSLog
#ifdef DEBUG
#   define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#   define DLog(...)
#endif


#endif /* CommonDefine_h */
