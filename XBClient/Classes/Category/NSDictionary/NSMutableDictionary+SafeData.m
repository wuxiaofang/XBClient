//
//  NSMutableDictionary+SafeData.m
//  XBClient
//
//  Created by yongche_w on 2017/9/18.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "NSMutableDictionary+SafeData.h"

@implementation NSMutableDictionary(SafeData)



- (void)safeSetObject:(id)anObject forKey:(id<NSCopying>)aKey {
    if (anObject == nil || [anObject isKindOfClass:[NSNull class]]) {
        NSAssert(NO, @"safeSetObject anObject is invalid");
    }
    else if (aKey == nil) {
        NSAssert(NO, @"safeSetObject aKey is invalid");
    }
    else {
        [self setObject:anObject forKey:aKey];
    }
}

@end
