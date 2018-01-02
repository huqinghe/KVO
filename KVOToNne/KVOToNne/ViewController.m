//
//  ViewController.m
//  KVOToNne
//
//  Created by huqinghe on 2017/12/24.
//  Copyright © 2017年 huqinghe. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()
@property(nonatomic,strong)Person *person;
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)kvo:(id)sender
{
    self.person.firstName = @"123";
}
-(Person *)person
{
    if (_person==nil) {
        _person = [[Person alloc] init];
        [_person addObserver:self forKeyPath:@"fullName" options:NSKeyValueObservingOptionNew context:@"[][][]"];
    }
    return _person;
}
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    NSLog(@"keyPath=:%@;object=:%@;change=:%@;content=:%@",keyPath,object,change,context);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
