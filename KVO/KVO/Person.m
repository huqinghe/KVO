//
//  Person.m
//  KVO
//
//  Created by huqinghe on 2017/12/23.
//  Copyright © 2017年 huqinghe. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)willChange:(NSKeyValueChange)changeKind valuesAtIndexes:(NSIndexSet *)indexes forKey:(NSString *)key
{
    NSLog(@"changeKind=:%lu;index=:%@;key=:%@",changeKind,indexes,key);
}
+ (BOOL)automaticallyNotifiesObserversForKey:(NSString *)key
{
    if ([key isEqualToString:@"name"])
    {
        return NO;
    }
    else
    {
       return [super automaticallyNotifiesObserversForKey:key];
    }
}

-(void)setName:(NSString *)name
{
    if (name != _name) {
        [self willChangeValueForKey:@"name"];
        _name  = name;
        [self didChangeValueForKey:@"name"];
    }
}

//- (void)willChangeValueForKey:(NSString *)key
//{
//    NSLog(@"key=123==:%@",key);
//}

@end
