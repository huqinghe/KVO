//
//  ViewController.m
//  KVO
//
//  Created by huqinghe on 2017/12/23.
//  Copyright © 2017年 huqinghe. All rights reserved.
//
#import "ViewController.h"
#import "Person.h"
#import "Test.h"
@interface ViewController ()
@property(nonatomic,strong)Person *person;
@end

@implementation ViewController
- (IBAction)kvo:(id)sender
{
//    @try{
//       [self removeObserver:self forKeyPath:@"abc" context:nil];
//    }
//    @catch(NSException *e){
//        NSLog(@"e=:%@",e);
//    }
//    NSLog(@"kvo");
//    self.person.myobj = [[Test alloc] init];
    //self.person.age = 18;
//    self.person.moneyName = @"perty";
//    @try {
//        [self removeObserver:self forKeyPath:@"abc" context:nil];
//    }
//    @try{
//      [self removeObserver:self forKeyPath:@"abc" context:nil];
//    } catch ()
//    self.person.name  = @"123456789";
    //self.person.age = 18;
    self.person.name = @"456";
//    [self.person setValue:@123 forKey:@"age"];
}

-(Person*)person
{
    if (_person == nil) {
        _person = [[Person  alloc] init];
        [_person addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:@"testName"];
        
//        [_person addObserver:self forKeyPath:@"myobj" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:@"testmyobj"];
//        [_person addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:@"testmyobj"];

    }
    return _person;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    NSLog(@"keyPath=:%@;object=:%@;change=:%@;content=:%@",keyPath,object,change,context);
    NSLog(@"=new=:%d",[change[@"new"] intValue]);
    NSLog(@"NSKeyValueObservingOptionInitial=:%lu",(unsigned long)NSKeyValueObservingOptionInitial);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
