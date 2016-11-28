//
//  CZAwardAnimationViewController.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/25.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZAwardAnimationViewController.h"
#import "CZSettingitem.h"
#import "CZSettingArrowitem.h"
#import "CZSettingSwithitem.h"
#import "CZSettingGroup.h"
@interface CZAwardAnimationViewController ()

@end

@implementation CZAwardAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CZSettingitem *item1=[CZSettingSwithitem itemWithIcon:nil title:@"中奖动画"];
    
//    NSArray *group1=@[item1];
    CZSettingGroup *group1=[[CZSettingGroup alloc]init];
    group1.items=@[item1];
    group1.headerTitle=@"当你有新中奖订单，启动程序时通过动画提醒您。为避免过于频繁，高频彩不会提醒";
    [self.cellData addObject:group1];
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
