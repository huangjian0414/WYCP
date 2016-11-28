//
//  CZSettingCell.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/23.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZSettingCell.h"
#import "CZSettingitem.h"
#import "CZSettingArrowitem.h"
#import "CZSettingSwithitem.h"
#import "CZSettingLabelItem.h"

@interface CZSettingCell()

@property (nonatomic,strong)UIImageView *mArrow;

@property (nonatomic,strong)UISwitch *mSwitch;

@property (nonatomic,strong)UILabel *mLabel;

@end


@implementation CZSettingCell

-(UIImageView *)mArrow
{
    if (!_mArrow) {
        _mArrow=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }
    return _mArrow;
}

-(UISwitch *)mSwitch
{
    if (!_mSwitch) {
        _mSwitch=[[UISwitch alloc]init];
        //监听
        [_mSwitch addTarget:self action:@selector(valueChange:) forControlEvents:UIControlEventValueChanged];
        
    }
    return _mSwitch;
}
-(void)valueChange:(UISwitch *)mSwitch
{
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    [defaults setBool:mSwitch.isOn forKey:self.item.title];
    [defaults synchronize];
    
}



-(UILabel *)mLabel
{
    if (!_mLabel) {
        _mLabel=[[UILabel alloc]init];
        _mLabel.bounds=CGRectMake(0, 0, 80, 44);
        _mLabel.text=@"00:00";
    }
    return _mLabel;
}

+(instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID=@"SettingCell";
    CZSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell=[[CZSettingCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;

}
-(void)setItem:(CZSettingitem *)item
{
    _item=item;
    self.textLabel.text=item.title;
    if (item.icon) {
        self.imageView.image=[UIImage imageNamed:item.icon];
    }
    
    //设置箭头
    // cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    if ([item isKindOfClass:[CZSettingArrowitem class]]) {
        self.accessoryView=self.mArrow;
        //箭头可以选中
        self.selectionStyle=UITableViewCellSelectionStyleDefault;
    }else if([item isKindOfClass:[CZSettingSwithitem class]])
    {
        self.mSwitch.on=[[NSUserDefaults standardUserDefaults]boolForKey:item.title];
        self.accessoryView=self.mSwitch;
        //开关的cell不能选中
        self.selectionStyle=UITableViewCellSelectionStyleNone;
    }else if([item isKindOfClass:[CZSettingLabelItem class]])
    {
        
        self.accessoryView=self.mLabel;
        self.selectionStyle=UITableViewCellSelectionStyleDefault;
    }

}

@end
