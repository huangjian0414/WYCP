//
//  CZScoreLiveWarningViewController.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/25.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZScoreLiveWarningViewController.h"
#import "CZSettingitem.h"
#import "CZSettingArrowitem.h"
#import "CZSettingSwithitem.h"
#import "CZSettingLabelItem.h"
#import "CZSettingGroup.h"

@implementation CZScoreLiveWarningViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CZSettingitem *item1=[CZSettingSwithitem itemWithIcon:nil title:@"提醒我关注的比赛"];
    
//    NSArray *group1=@[item1];
    CZSettingGroup *group1=[[CZSettingGroup alloc]init];
    group1.items=@[item1];
    group1.footerTitle=@"当我关注的比赛比分发生变化时，通过小弹窗或推送进行提醒";
    
    [self.cellData addObject:group1];
    CZSettingitem *item2=[CZSettingLabelItem itemWithIcon:nil title:@"起始时间"];
    
//    NSArray *group2=@[item2];
    CZSettingGroup *group2=[[CZSettingGroup alloc]init];
    group2.items=@[item2];
    group2.headerTitle=@"只在以下时间接受比分直播";
    
    [self.cellData addObject:group2];
    

    
    CZSettingitem *item3=[CZSettingLabelItem itemWithIcon:nil title:@"结束时间"];
    
//    NSArray *group3=@[item3];
    CZSettingGroup *group3=[[CZSettingGroup alloc]init];
    group3.items=@[item3];
    
    [self.cellData addObject:group3];
    
}



@end
