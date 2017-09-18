//
//  NSDictionary+SafeData.h
//  XBClient
//
//  Created by yongche_w on 2017/9/18.
//  Copyright © 2017年 Map. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary(SafeData)

- (id)objectSafeForKey:(NSString*)key;
- (NSArray*)arraySafeForKey:(NSString*)key;
- (NSDictionary*)dictionarySafeForKey:(NSString*)key;
- (NSString*)stringSafeForKey:(NSString*)key;
- (NSMutableArray*)mutableArraySafeForKey:(NSString*)key;
- (NSMutableDictionary*)mutableDictionarySafeForKey:(NSString*)key;
- (NSInteger)integerSafeForKey:(NSString*)key;
- (CGFloat)floatSafeForKey:(NSString*)key;
- (double)doubleSafeForKey:(NSString*)key;
- (NSNumber*)numberSafeForKey:(NSString*)key;
- (int)intSafeForKey:(NSString*)key;
- (long long)longlongSafeForKey:(NSString*)key;

@end
