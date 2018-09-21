//
//  ViewController.m
//  GCDTime
//
//  Created by shenhua on 2018/9/3.
//  Copyright © 2018年 RWN. All rights reserved.
//

#import "ViewController.h"
#import "RWNGCDTime.h"

@interface ViewController ()

@property(nonatomic,copy) NSString * identifire;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    NSLog(@"begin");
//    self.identifire =  [RWNGCDTime RWNTimeDoTask:^(dispatch_source_t timer) {
//        NSLog(@"RWNTimeDoTask--%@",[NSThread currentThread]);
//    } interval:1];
    
    self.identifire =  [RWNGCDTime RWNTimeNWaitDoTask:^(dispatch_source_t timer) {
        NSLog(@"RWNTimeDoTask--%@",[NSThread currentThread]);
    } interval:1];
    
   [RWNGCDTime startTaskWithIdentifier:self.identifire];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [RWNGCDTime cancaleTaskWithIdentifier:self.identifire];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
