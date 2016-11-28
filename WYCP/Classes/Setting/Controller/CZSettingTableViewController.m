//
//  CZSettingTableViewController.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/23.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZSettingTableViewController.h"
#import "CZSettingitem.h"
#import "CZSettingArrowitem.h"
#import "CZSettingSwithitem.h"
#import "CZSettingCell.h"
#import "MBProgressHUD+CZ.h"
#import "CZPushAndWarningViewController.h"
#import "CZSettingGroup.h"
#import "CZHelpViewController.h"
#import "CZProductsShareCollectionViewController.h"


@implementation CZSettingTableViewController


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title=@"设置";
    CZSettingitem *item1=[CZSettingArrowitem itemWithIcon:@"MorePush" title:@"推送和提醒" vcClass:[CZPushAndWarningViewController class]];
    CZSettingitem *item2=[CZSettingSwithitem itemWithIcon:@"handShake" title:@"摇一摇机选"];
    CZSettingitem *item3=[CZSettingSwithitem itemWithIcon:@"sound_Effect" title:@"声音和效果"];
//    NSArray *group1=@[item1,item2,item3];
    CZSettingGroup *group1=[[CZSettingGroup alloc]init];
    group1.items=@[item1,item2,item3];
    
    
    [self.cellData addObject:group1];
    CZSettingitem *item4=[CZSettingArrowitem itemWithIcon:@"MoreUpdate" title:@"检查版本更新"];
    item4.operation=^()
    {
        // 1.获取当前App的版本信息
        NSDictionary *info=[[NSBundle mainBundle]infoDictionary];
        NSString *localVersion=info[@"CFBundleShortVersionString"];
        
        [MBProgressHUD showMessage:@"正在检查版本更新...."];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUD];
            if ([localVersion isEqualToString:@"1.1"]){
                [MBProgressHUD showSuccess:@"没有新的更新"];
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    [MBProgressHUD hideHUD];
                });
                
            }else
            {
                [MBProgressHUD showSuccess:@"可以更新"];
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    [MBProgressHUD hideHUD];
                });
            }
            
            
        });
        
    };

    CZSettingitem *item5=[CZSettingArrowitem itemWithIcon:@"MoreHelp" title:@"帮助" vcClass:[CZHelpViewController class]];
    CZSettingitem *item6=[CZSettingArrowitem itemWithIcon:@"MoreShare" title:@"分享"];
    CZSettingitem *item7=[CZSettingArrowitem itemWithIcon:@"MoreMessage" title:@"查看消息"];
    CZSettingitem *item8=[CZSettingArrowitem itemWithIcon:@"MoreNetease" title:@"产品推荐" vcClass:[CZProductsShareCollectionViewController class]];
    CZSettingitem *item9=[CZSettingArrowitem itemWithIcon:@"MoreAbout" title:@"关于"];
//    NSArray *group2=@[item4,item5,item6,item7,item8,item9];
    CZSettingGroup *group2=[[CZSettingGroup alloc]init];
    group2.items=@[item4,item5,item6,item7,item8,item9];
   
    [self.cellData addObject:group2];
    
    
    
}







@end
