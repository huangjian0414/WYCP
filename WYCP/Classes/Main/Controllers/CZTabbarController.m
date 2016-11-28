//
//  CZTabbarController.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/22.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZTabbarController.h"
#import "CZTabbar.h"

@interface CZTabbarController ()<CZTabbarDelegate>


@end

@implementation CZTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    CZTabbar *mTabbar=[[CZTabbar alloc]initWithFrame:self.tabBar.bounds];
    mTabbar.backgroundColor=[UIColor redColor];
    
    for (NSInteger i=0; i<5; i++) {
            NSString *normalImg=[NSString stringWithFormat:@"TabBar%ld",i+1];
            NSString *selImg=[NSString stringWithFormat:@"TabBar%ldSel",i+1];
        [mTabbar addTabbarBtnWithNormalImg:normalImg selImg:selImg];
    
    }
    [mTabbar setDelegate:self];
    [self.tabBar addSubview:mTabbar];
    

}


-(void)tabbar:(CZTabbar *)tabbar didSelectedFrom:(NSInteger)from to:(NSInteger)to
{
    self.selectedIndex=to;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
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
