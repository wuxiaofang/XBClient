//
//  NSMutableDictionary+SafeData.h
//  XBClient
//
//  Created by yongche_w on 2017/9/18.
//  Copyright © 2017年 Map. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary(SafeData)

- (void)safeSetObject:(id)anObject forKey:(id<NSCopying>)aKey;

@end
