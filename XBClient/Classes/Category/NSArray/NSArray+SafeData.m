//
//  NSArray+SafeData.m
//  XBClient
//
//  Created by yongche_w on 2017/9/18.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "NSArray+SafeData.h"

@implementation NSArray(SafeData)

- (id)safeObjectAtIndex:(NSUInteger)index {
    if (index >= [self count]) {
        
        NSAssert(NO, @"NSArray safeObjectAtIndex index beyond count");
        return nil;
    }
    
    return [self objectAtIndex:index];
}

@end
