//
//  CZSettingTableViewController.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/23.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZPushAndWarningViewController.h"
#import "CZSettingitem.h"
#import "CZSettingArrowitem.h"
#import "CZSettingSwithitem.h"
#import "CZSettingCell.h"
#import "MBProgressHUD+CZ.h"
#import "CZAwardNumPushViewController.h"
#import "CZAwardAnimationViewController.h"
#import "CZScoreLiveWarningViewController.h"
#import "CZSettingGroup.h"

#import "ViewController.h"



@implementation CZPushAndWarningViewController



- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    CZSettingitem *item1=[CZSettingArrowitem itemWithIcon:nil title:@"开奖号码推送" vcClass:[CZAwardNumPushViewController class]];
    CZSettingitem *item2=[CZSettingArrowitem itemWithIcon:nil title:@"中奖动画" vcClass:[CZAwardAnimationViewController class]];
    CZSettingitem *item3=[CZSettingArrowitem itemWithIcon:nil title:@"比分直播提醒" vcClass:[CZScoreLiveWarningViewController class]];
    CZSettingitem *item4=[CZSettingArrowitem itemWithIcon:nil title:@"购彩定时提醒" vcClass:[ViewController class]];
//    NSArray *group1=@[item1,item2,item3,item4];
    CZSettingGroup *group1=[[CZSettingGroup alloc]init];
    group1.items=@[item1,item2,item3,item4];
    
    [self.cellData addObject:group1];
    
    
    
}








@end
