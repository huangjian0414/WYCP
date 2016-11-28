//
//  CZProductCell.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/25.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZProductCell.h"
#import "CZProduct.h"

@interface CZProductCell()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end


@implementation CZProductCell




- (void)awakeFromNib {
    self.imageView.layer.cornerRadius=15;
    self.imageView.layer.masksToBounds=YES;
    
    
}

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self=[super initWithFrame:frame]) {
        
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    if (self=[super initWithCoder:aDecoder]) {
        
    }
    return self;
}


-(void)setProduct:(CZProduct *)product
{
    _product=product;
    self.imageView.image=[UIImage imageNamed:product.icon];
    self.nameLabel.text=product.title;
    [_nameLabel adjustsFontSizeToFitWidth];
    
    
}



@end
