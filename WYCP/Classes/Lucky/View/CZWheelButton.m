//
//  CZWheelButton.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/26.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZWheelButton.h"

@implementation CZWheelButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imgW=40;
    CGFloat imgH=48;
    CGFloat imgX=(contentRect.size.width-imgW)*0.5;
    
    return CGRectMake(imgX, 20, imgW, imgH);
}

-(void)setHighlighted:(BOOL)highlighted
{
    
}

@end
