//
//  Person.m
//  KVOToNne
//
//  Created by huqinghe on 2017/12/24.
//  Copyright © 2017年 huqinghe. All rights reserved.
//
/*
 * To-One
 *
 */

#import "Person.h"

@implementation Person
-(NSString*)fullName
{
    return [NSString stringWithFormat:@"%@%@",_firstName,_lastName];
}
//+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
//    NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
//    if ([key isEqualToString:@"fullName"]) {
//        NSArray *affectingKeys = @[@"lastName", @"firstName"];
//        keyPaths = [keyPaths setByAddingObjectsFromArray:affectingKeys];
//    }
//    return keyPaths;
//}

//+ (NSSet *)keyPathsForValuesAffectingFullName {
//    return [NSSet setWithObjects:@"lastName", @"firstName", nil];
//}

@end
