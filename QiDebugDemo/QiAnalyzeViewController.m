//
//  QiAnalyzeViewController.m
//  QiDebugDemo
//
//  Created by huangxianshuai on 2019/1/21.
//  Copyright © 2019年 QiShare. All rights reserved.
//

#import "QiAnalyzeViewController.h"

@interface QiAnalyzeViewController ()

@end

@implementation QiAnalyzeViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
}

//! 文本本地化问题
- (IBAction)localizabilityIssues:(UIButton *)sender {
    
    self.title = @"Title";
    
    [sender setTitle:@"用户看到的文本" forState:UIControlStateNormal];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"弹框标题" message:@"弹框消息" preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"动作标题" style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:alert animated:YES completion:nil];
}

//! 逻辑问题
- (void)logicErrors {

    NSNumber *number = @(YES);

    if (number) {
        NSLog(@"The number is true.");
    }
    else {
        NSLog(@"The number is false.");
    }
}

//! 内存问题
- (void)memeryErrors {

    UIImage *originalImage;
    [self generateImageWithImage:originalImage rect:CGRectMake(.0, .0, 10.0, 10.0)];
}

- (UIImage *)generateImageWithImage:(UIImage * _Nonnull )image rect:(CGRect)rect {

    CGImageRef imageRef = CGImageCreateWithImageInRect(image.CGImage, rect);
    UIImage *finalImage = [UIImage imageWithCGImage:imageRef];

    return finalImage;
}


//! 数据问题
- (void)deadStore {

    NSString *string = @"string";
    NSLog(@"The string is %@.", string);
}

//! 语法问题
- (instancetype)init {

    if (self == [super init]) {

        NSLog(@"init properties.");
    }

    return self;
}

@end
