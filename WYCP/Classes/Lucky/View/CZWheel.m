//
//  CZWheel.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/26.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZWheel.h"
#import "CZWheelButton.h"

@interface CZWheel()
@property (weak, nonatomic) IBOutlet UIImageView *rotateWheel;

@property (strong,nonatomic)UIButton *selectedBtn;
@property (strong,nonatomic)CADisplayLink *link;

- (IBAction)centerBtnClick:(id)sender;

@end

@implementation CZWheel

+(instancetype)wheel
{
    return [[[NSBundle mainBundle]loadNibNamed:@"CZWheel" owner:nil options:nil]lastObject];
}


-(void)awakeFromNib
{
    UIImage *normalBigImg=[UIImage imageNamed:@"LuckyAstrology"];
    
    UIImage *selBigImg=[UIImage imageNamed:@"LuckyAstrologyPressed"];
    
    
    
    CGFloat scale= [UIScreen mainScreen].scale;
    CGFloat imgW=normalBigImg.size.width/12*scale;
    CGFloat imgH=normalBigImg.size.height*scale;
    
    CGFloat angle=M_PI/6;
    for (int i=0; i<12; i++) {
        UIButton *btn=[CZWheelButton buttonWithType:UIButtonTypeCustom];
        btn.bounds=CGRectMake(0, 0, 65, 143);
        btn.center=self.rotateWheel.center;
        btn.layer.anchorPoint=CGPointMake(0.5, 1);
//        btn.backgroundColor=[UIColor redColor];
        
        btn.transform=CGAffineTransformMakeRotation(angle*i);
        
        CGRect imgRect=CGRectMake(imgW*i, 0, imgW, imgH);
        
        CGImageRef normalImgRef= CGImageCreateWithImageInRect(normalBigImg.CGImage, imgRect);
        
        [btn setImage:[UIImage imageWithCGImage:normalImgRef] forState:UIControlStateNormal];
        
        CGImageRef selImgRef=CGImageCreateWithImageInRect(selBigImg.CGImage, imgRect);
        
        [btn setImage:[UIImage imageWithCGImage:selImgRef] forState:UIControlStateSelected];
        
        [btn setBackgroundImage:[UIImage imageNamed:@"LuckyRototeSelected"] forState:UIControlStateSelected];
        
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
        
        if (i==0) {
            [self btnClick:btn];
        }
        
        [self.rotateWheel addSubview:btn];
    }
    
}

-(void)btnClick:(UIButton *)btn
{
    self.selectedBtn.selected=NO;
    btn.selected=YES;
    self.selectedBtn=btn;
    
}

- (IBAction)centerBtnClick:(id)sender {
    
    [self stopAutoRotate];
    
    CABasicAnimation *rotationAni=[CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    rotationAni.toValue=@(M_PI*6);
    rotationAni.duration=3;
    
    rotationAni.delegate=self;
    [self.rotateWheel.layer addAnimation:rotationAni forKey:nil];
    
    
}
-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2*NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self startAutoRotate];
    });
    
}


-(void)startAutoRotate
{
    if (self.link) return;
    self.link=[CADisplayLink displayLinkWithTarget:self selector:@selector(update)];

    [self.link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
    
}
-(void)update
{
        CGFloat angle=M_PI_4/60;
        self.rotateWheel.transform=CGAffineTransformRotate(self.rotateWheel.transform,angle);
}
-(void)stopAutoRotate
{
    [self.link invalidate];
    self.link=nil;
}
@end
