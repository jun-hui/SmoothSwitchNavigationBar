//
//  ViewController.m
//  SmoothSwitchNavigationBar
//
//  Created by 小王 on 2017/4/12.
//  Copyright © 2017年 小王. All rights reserved.
//

#import "FirstViewController.h"
#import "NextViewController.h"
#import "UIViewController+SmoothNav.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor redColor]];
    self.navBarBgAlpha = @"1.0";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"界面1️⃣";
    self.view.backgroundColor = [UIColor colorWithRed:0x32/255.0f green:0xAB/255.0f blue:0x64/255.0f alpha:1.0f];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    [btn setCenter:self.view.center];
    [btn setTitle:@"下一个" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(toNextView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

// 按钮响应
- (void)toNextView {
    NextViewController *nextVC = [[NextViewController alloc] init];
    [self.navigationController pushViewController:nextVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
