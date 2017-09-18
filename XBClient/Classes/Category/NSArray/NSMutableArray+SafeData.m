//
//  NSMutableArray+SafeData.m
//  XBClient
//
//  Created by yongche_w on 2017/9/18.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "NSMutableArray+SafeData.h"

@implementation NSMutableArray(SafeData)

- (void)safeAddObject:(id)anObject
{
    if (anObject == nil || [anObject isKindOfClass:[NSNull class]]) {
        NSAssert(NO, @"NSMutableArray safeAddObject anObject is invalid");
    }
    else {
        [self addObject:anObject];
    }
}

@end
