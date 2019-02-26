//
//  QiConsoleViewController.m
//  QiDebugDemo
//
//  Created by huangxianshuai on 2019/1/21.
//  Copyright © 2019年 QiShare. All rights reserved.
//

#import "QiConsoleViewController.h"

@interface QiConsoleViewController ()

@end

bool isOK() {
    
    return true;
}

@implementation QiConsoleViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self testLLDBCommands];
    isOK();
}

- (void)testLLDBCommands {
    
    NSUInteger count = 10;
    NSString *string = @"QiShare";
    NSLog(@"\ncount: %lu\nstring: %@", count, string);
    string = @"huang";
    NSLog(@"\ncount: %lu\nstring: %@", count, string);
    NSArray *arr = @[@"Qi", string];
    NSLog(@"\narr: %@", arr);
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    NSLog(@"subViews: %@", self.view.subviews);
}

@end
