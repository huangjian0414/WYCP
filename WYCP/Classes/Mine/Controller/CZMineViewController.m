//
//  CZMineViewController.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/23.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZMineViewController.h"
#import "CZSettingTableViewController.h"

@interface CZMineViewController ()
- (IBAction)settingBtnClick:(id)sender;

@end

@implementation CZMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)settingBtnClick:(UIButton *)btn {
    CZSettingTableViewController *settingVC=[[CZSettingTableViewController alloc]init];
    
    [self.navigationController pushViewController:settingVC animated:YES];
    
    
}
@end
