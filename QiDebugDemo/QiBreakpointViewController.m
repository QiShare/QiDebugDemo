
#import "QiBreakpointViewController.h"










int testCFunction() {
    
    NSLog(@"testCFuntion");
    return 1;
}

@implementation QiBreakpointViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self testBreakpoints:@"QiShare"];
}

- (void)testBreakpoints:(NSString *)string {
    
    for (NSInteger i = 0; i < 100; i++) {
        
        NSLog(@"i: %li", i);
    }
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
}







//! 测试异常断点断点
- (void)testAllExceptions {
    
    NSArray *array = @[@0, @1, @2, @3];
    NSLog(@"The 5th value is %@", array[4]);
}

//- (IBAction)testBreakpoints:(id)sender {
//
//    [QiBreakpointViewController testSymbolicBreakpoints:nil param2:nil];
//}

//! 测试符号断点
+ (void)testSymbolicBreakpoints:(id)param1 param2:(id)param2 {
    
    NSLog(@"param1: %@\nparam2: %@", param1, param2);
}

@end
