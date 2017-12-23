//
//  Person.h
//  KVO
//
//  Created by huqinghe on 2017/12/23.
//  Copyright © 2017年 huqinghe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Test.h"
#import "Monkey.h"
@interface Person : Monkey
@property(nonatomic,copy)NSString*name;
@property(nonatomic,strong)Test* myobj;
@property(nonatomic,assign)int age;
@end
