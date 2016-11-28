//
//  CZHtmlPage.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/25.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZHtmlPage.h"

@implementation CZHtmlPage

-(instancetype)initWithDict:(NSDictionary *)dict
{
    
    if (self =[super init]) {
        self.html=dict[@"html"];
        self.title=dict[@"title"];
        self.ID=dict[@"id"];
    }
    return self;
}
+(instancetype)htmlPageWithDict:(NSDictionary *)dict
{
    return [[self alloc]initWithDict:dict];
}

@end
