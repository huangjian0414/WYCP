//
//  CZProduct.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/25.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZProduct.h"

@implementation CZProduct


-(instancetype)initWithDict:(NSDictionary *)dict
{
    if (self=[super init]) {
        self.icon=dict[@"icon"];
        self.title=dict[@"title"];
        self.identifier=dict[@"id"];
        self.schemes=dict[@"customUrl"];
        self.appUrl=dict[@"url"];

    }
    return self;
}
+(instancetype)productWithDict:(NSDictionary *)dict
{
    return [[self alloc]initWithDict:dict];
}
@end
