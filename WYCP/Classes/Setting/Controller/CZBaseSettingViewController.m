//
//  CZSettingTableViewController.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/23.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZBaseSettingViewController.h"
#import "CZSettingitem.h"
#import "CZSettingArrowitem.h"
#import "CZSettingSwithitem.h"
#import "CZSettingCell.h"
#import "MBProgressHUD+CZ.h"
#import "CZPushAndWarningViewController.h"
#import "CZSettingLabelItem.h"
#import "CZSettingGroup.h"





@interface CZBaseSettingViewController ()



@end

@implementation CZBaseSettingViewController

-(instancetype)init
{
    if (self=[super initWithStyle:UITableViewStyleGrouped]) {
        
    }
    return self;
}



-(NSMutableArray *)cellData
{
    if (!_cellData) {
        _cellData=[NSMutableArray array];
    }
    
    return _cellData;
}

-(void)viewDidLoad
{
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"bg"]];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.cellData.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    CZSettingGroup *group=self.cellData[section];
   
//    NSArray *group=self.cellData[section];
    return group.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CZSettingCell *cell=[CZSettingCell cellWithTableView:tableView];
    CZSettingGroup *group=self.cellData[indexPath.section];
    
//    NSArray *group=self.cellData[indexPath.section];
    CZSettingitem *items=group.items[indexPath.row];
    
    cell.item=items;
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    CZSettingGroup *group=self.cellData[indexPath.section];
    CZSettingitem *item=group.items[indexPath.row];
    
//    NSArray *group=self.cellData[indexPath.section];
//    CZSettingitem *item=group[indexPath.row];
    if (item.operation) {
        item.operation();
    }else if (item.vcClass) {
        id vc= [[item.vcClass alloc]init];
        [vc setTitle:item.title];
        [self.navigationController pushViewController:vc animated:YES];
        
    }
    
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    CZSettingGroup *group=self.cellData[section];
    return group.headerTitle;
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    CZSettingGroup *group=self.cellData[section];
    return group.footerTitle;
}

@end
