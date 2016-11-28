//
//  CZTitleButton.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/23.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZTitleButton.h"
#define ImageW 30  //图片宽度

@implementation CZTitleButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)initWithCoder:(NSCoder *)aDecoder
{
    if (self=[super initWithCoder:aDecoder]) {
        self.imageView.contentMode=UIViewContentModeCenter;
        self.titleLabel.adjustsFontSizeToFitWidth=YES;
    }
    return self;
}


//设置标题的位置
-(CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat titleW=contentRect.size.width-ImageW;
    CGFloat titleH=contentRect.size.height;
    return CGRectMake(0, 0, titleW, titleH);
}

//设置图片的位置
-(CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imageW=ImageW;
    CGFloat imageH=contentRect.size.height;
    CGFloat imageX=contentRect.size.width-ImageW;
    //此方法里，button的字控件都为空
    return CGRectMake(imageX, 0, imageW, imageH);
}

-(void)setHighlighted:(BOOL)highlighted
{
    
}

@end
