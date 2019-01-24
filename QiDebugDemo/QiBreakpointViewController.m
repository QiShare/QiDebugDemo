//
//  QiBreakpointViewController.m
//  QiDebugDemo
//
//  Created by huangxianshuai on 2019/1/21.
//  Copyright © 2019年 QiShare. All rights reserved.
//

#import "QiBreakpointViewController.h"

@interface QiBreakpointViewController ()

@end

@implementation QiBreakpointViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
}

- (IBAction)testBreakpoints:(id)sender {
    
    [self testAllExceptions];
}

//! 测试全局断点
- (void)testAllExceptions {
 
    NSArray *array = @[@0, @1, @2, @3];
    NSLog(@"The 5th value is %@", array[4]);
}

@end
