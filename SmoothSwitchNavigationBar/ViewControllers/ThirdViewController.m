//
//  ThirdViewController.m
//  SmoothSwitchNavigationBar
//
//  Created by 小王 on 2017/4/12.
//  Copyright © 2017年 小王. All rights reserved.
//

#import "ThirdViewController.h"
#import "UIViewController+SmoothNav.h"

@interface ThirdViewController ()
{
    UIImageView *navBarHairlineImageView;
}

@end

@implementation ThirdViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor orangeColor]];

    self.navBarBgAlpha = @"0.1";
    navBarHairlineImageView.hidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    navBarHairlineImageView.hidden = NO;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"界面3️⃣";
    self.view.backgroundColor = [UIColor greenColor];
    
    navBarHairlineImageView = [self findHairlineImageViewUnder:self.navigationController.navigationBar];
}

- (UIImageView *)findHairlineImageViewUnder:(UIView *)view {
    if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0) {
        return (UIImageView *)view;
    }
    for (UIView *subview in view.subviews) {
        UIImageView *imageView = [self findHairlineImageViewUnder:subview];
        if (imageView) {
            return imageView;
        }
    }
    return nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIImage*)createImageWithColor:(UIColor*) color
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return theImage;
}

@end
