//
//  CZNavigationViewController.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/22.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZNavigationViewController.h"

@interface CZNavigationViewController ()

@end

@implementation CZNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [[UINavigationBar appearance]setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
//    
//    [UIApplication sharedApplication].statusBarStyle=UIStatusBarStyleLightContent;
}

//类第一次使用的时候被调用
+ (void)initialize
{
        //设置导航条的背景图片  －－－－设置全局
    UINavigationBar *navBar=[UINavigationBar appearance];
    [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    
    
    [UIApplication sharedApplication].statusBarStyle=UIStatusBarStyleLightContent;
    NSDictionary *titleAttr=@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:18]};
    [navBar setTitleTextAttributes:titleAttr];
    
    
    //设置返回按钮样式
    //tintColor用于导航条的所有item
    navBar.tintColor=[UIColor whiteColor];
    
   
    //改变整个按钮的背景
    UIBarButtonItem *navItem=[UIBarButtonItem appearance];
    //[navItem setBackButtonBackgroundImage:[UIImage imageNamed:@"NavBackButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    //设置Item字体大小
    [navItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} forState:UIControlStateNormal];
    
   
}
//导航控制器的子控制器被移除时调用
//-(UIViewController *)popViewControllerAnimated:(BOOL)animated
//{
//    return [super popViewControllerAnimated:animated];
//}

//导航控制器的子控制器被push的时候调用
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    viewController.hidesBottomBarWhenPushed=YES;
    return [super pushViewController:viewController animated:animated];
}


//状态栏样式
//-(UIStatusBarStyle)preferredStatusBarStyle
//{
//    return UIStatusBarStyleLightContent;
//}

@end
