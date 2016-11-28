//
//  CZWheel.h
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/26.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CZWheel : UIView

+(instancetype)wheel;



-(void)startAutoRotate;

-(void)stopAutoRotate;
@end
