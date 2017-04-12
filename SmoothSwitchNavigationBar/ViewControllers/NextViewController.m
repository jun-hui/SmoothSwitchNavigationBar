//
//  NextViewController.m
//  SmoothSwitchNavigationBar
//
//  Created by 小王 on 2017/4/12.
//  Copyright © 2017年 小王. All rights reserved.
//

#import "NextViewController.h"
#import "ThirdViewController.h"
#import "UIViewController+SmoothNav.h"

@interface NextViewController ()

@property (nonatomic, strong) UIColor *barBGColor;
@property (nonatomic, strong) UIImage *barShadowImg;

@end

@implementation NextViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor cyanColor]];
    
    self.navBarBgAlpha = @"1.0";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"界面2️⃣";
    self.view.backgroundColor = [UIColor colorWithRed:0xe0/255.0f green:0x7a/255.0f blue:0x40/255.0f alpha:1.0f];
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 200, 50)];
    [btn setCenter:self.view.center];
    [btn setTitle:@"下一个" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(toNextView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
}

// 进入新界面
- (void)toNextView {
    ThirdViewController *nextVC = [[ThirdViewController alloc] init];
    [self.navigationController pushViewController:nextVC animated:YES];
}

#pragma mark - UINavigationControllerDelegate
// 将要显示控制器
//- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
//    // 判断要显示的控制器是否是自己
//    BOOL isShowSelf = [viewController isKindOfClass:[self class]];
//    
//    [self.navigationController setNavigationBarHidden:isShowSelf animated:YES];
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
