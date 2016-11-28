//
//  CZBuyTogetherViewController.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/23.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZBuyTogetherViewController.h"

@interface CZBuyTogetherViewController ()
- (IBAction)btnClick:(id)sender;

@end

@implementation CZBuyTogetherViewController

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

- (IBAction)btnClick:(UIButton *)btn {
    [UIView animateWithDuration:0.25 animations:^{
        if (CGAffineTransformIsIdentity(btn.imageView.transform)) {
            btn.imageView.transform=CGAffineTransformMakeRotation(M_PI);
        }else
        {
            btn.imageView.transform=CGAffineTransformIdentity;
        }
        
    }];
    
    
}
@end
