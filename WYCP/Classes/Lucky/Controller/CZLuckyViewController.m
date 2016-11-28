//
//  CZLuckyViewController.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/26.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZLuckyViewController.h"
#import "CZWheel.h"

@interface CZLuckyViewController ()

@property (nonatomic,weak)CZWheel *wheel;
@end

@implementation CZLuckyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CZWheel *wheel=[CZWheel wheel];
    wheel.center=self.view.center;
    [self.view addSubview:wheel];
    self.wheel=wheel;
    [self.wheel startAutoRotate];
    
    
}

@end
