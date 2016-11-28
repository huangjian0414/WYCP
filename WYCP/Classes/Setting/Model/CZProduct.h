//
//  CZProduct.h
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/25.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZProduct : NSObject

@property (nonatomic,copy)NSString *icon;
@property (nonatomic,copy)NSString *title;
@property (nonatomic,copy)NSString *identifier;
@property (nonatomic,copy)NSString *schemes;
@property (nonatomic,copy)NSString *appUrl;


-(instancetype)initWithDict:(NSDictionary *)dict;
+(instancetype)productWithDict:(NSDictionary *)dict;
@end
