//
//  CZSettingCell.h
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/23.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import <UIKit/UIKit.h>

@class  CZSettingitem;
@interface CZSettingCell : UITableViewCell


+(instancetype)cellWithTableView:(UITableView *)tableView;

@property (nonatomic,strong)CZSettingitem *item;
@end
