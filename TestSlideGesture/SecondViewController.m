//
//  SecondViewController.m
//  TestSlideGesture
//
//  Created by wendongsheng on 15/4/7.
//  Copyright (c) 2015年 etiantian. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    
//    LxNavigationController *nav = (LxNavigationController *)self.navigationController;
//    nav.popGestureRecognizerBeginBlock = ^{
//        NSLog(@"哈哈哈");
//    };
//    
//    nav.popGestureRecognizerStopBlock = ^(LxNavigationControllerInteractionStopReason stopReason){
//        NSLog(@"嘻嘻嘻嘻");
//    };
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(50, 200, self.view.frame.size.width-100, 30);
    button.backgroundColor = [UIColor whiteColor];
    [button setTitle:@"push" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

}

- (void)clickButton{
    ThirdViewController *thirdViewController = [ThirdViewController new];
    [self.navigationController pushViewController:thirdViewController animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
