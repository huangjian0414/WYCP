//
//  CZTabbar.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/22.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZTabbar.h"

@interface CZTabbar()

//当前选中的按钮
@property (nonatomic,weak)UIButton *selectedBtn;

@end

@implementation CZTabbar


//调用控件的init方法时被调用([UIView alloc]init)  接着还会调用initWithFrame
//- (instancetype)init
//{
//    
//}
//
//
//-(instancetype)initWithFrame:(CGRect)frame
//{
//    if (self=[super initWithFrame:frame]) {
//      //  [self setupBtns];
//        
//    }
//    return self;
//    
//}

//调用控件的创建从xib/storyboard 的时候被调用
//-(instancetype)initWithCoder:(NSCoder *)aDecoder
//{
//    
//}

-(void)addTabbarBtnWithNormalImg:(NSString *)normalImg selImg:(NSString *)selImg
{

    UIButton *btn=[CZTabbarButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:[UIImage imageNamed:normalImg] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:selImg] forState:UIControlStateSelected];
    
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
    btn.tag=self.subviews.count;
    [self addSubview:btn];
    if (btn.tag==0) {
        [self btnClick:btn];
    }

}


-(void)layoutSubviews
{
    [super layoutSubviews];
    NSInteger count=self.subviews.count;
    
    CGFloat btnW=self.bounds.size.width/count;
    CGFloat btnH=self.bounds.size.height;
    
    for (UIButton *btn in self.subviews) {
        btn.frame=CGRectMake(btnW*btn.tag, 0, btnW, btnH);
    }
    
}
-(void)btnClick:(UIButton *)btn
{
    //一点击通知代理
    if ([self.delegate respondsToSelector:@selector(tabbar:didSelectedFrom:to:)]) {
        [self.delegate tabbar:self didSelectedFrom:self.selectedBtn.tag to:btn.tag];
    }
    self.selectedBtn.selected=NO;
    btn.selected=YES;
    self.selectedBtn=btn;
   
}



@end

@implementation CZTabbarButton

//图片高亮会调用
-(void)setHighlighted:(BOOL)highlighted
{
    //不调用父类的方法，就不会有高亮的效果
   // [super setHighlighted:highlighted];
   
}

@end



