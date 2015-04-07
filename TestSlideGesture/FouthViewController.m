//
//  FouthViewController.m
//  TestSlideGesture
//
//  Created by wendongsheng on 15/4/7.
//  Copyright (c) 2015年 etiantian. All rights reserved.
//

#import "FouthViewController.h"
#import "FifthViewController.h"

@interface FouthViewController ()

@end

@implementation FouthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor purpleColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(50, 200, self.view.frame.size.width-100, 30);
    button.backgroundColor = [UIColor whiteColor];
    [button setTitle:@"push" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)clickButton{
    FifthViewController *fifth = [FifthViewController new];
    [self.navigationController pushViewController:fifth animated:YES];
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
