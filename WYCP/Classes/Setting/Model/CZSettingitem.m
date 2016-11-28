//
//  CZSettingitem.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/23.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZSettingitem.h"

@implementation CZSettingitem


-(instancetype)initWithIcon:(NSString *)icon title:(NSString *)title
{
    if (self=[super init]) {
        self.icon=icon;
        self.title=title;
    }
    return self;
}
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title
{
    return [[self alloc]initWithIcon:icon title:title];
}

+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title vcClass:(Class)vcClass
{
    CZSettingitem *item=[self itemWithIcon:icon title:title];
    item.vcClass= vcClass;
    
    return item;
    
}

@end
