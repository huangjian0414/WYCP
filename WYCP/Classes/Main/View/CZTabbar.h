//
//  CZTabbar.h
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/22.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CZTabbar;
@protocol CZTabbarDelegate <NSObject>

-(void)tabbar:(CZTabbar *)tabbar didSelectedFrom:(NSInteger)from to:(NSInteger)to;

@end

@interface CZTabbar : UIView
@property (nonatomic,weak)id<CZTabbarDelegate>delegate;

//图片
-(void)addTabbarBtnWithNormalImg:(NSString *)normalImg selImg:(NSString *)selImg;
@end

//自定义button
@interface CZTabbarButton : UIButton


@end