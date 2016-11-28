//
//  CZAwardNumPushViewController.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/25.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZAwardNumPushViewController.h"
#import "CZSettingitem.h"
#import "CZSettingArrowitem.h"
#import "CZSettingSwithitem.h"
#import "CZSettingGroup.h"

@interface CZAwardNumPushViewController ()

@end

@implementation CZAwardNumPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CZSettingitem *item1=[CZSettingSwithitem itemWithIcon:nil title:@"双色球"];
    CZSettingitem *item2=[CZSettingSwithitem itemWithIcon:nil title:@"大乐透"];
//    NSArray *group1=@[item1,item2];
    CZSettingGroup *group1=[[CZSettingGroup alloc]init];
    group1.items=@[item1,item2];
    group1.headerTitle=@"打开设置即可在开奖后立即收到推送消息，获知开奖号码";
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
