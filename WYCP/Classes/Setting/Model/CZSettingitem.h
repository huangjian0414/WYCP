//
//  CZSettingitem.h
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/23.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^OperationBlock)();

@interface CZSettingitem : NSObject
@property (nonatomic,copy)NSString *icon;
@property (nonatomic,copy)NSString *title;

//控制器类型
@property (nonatomic,assign)Class vcClass;
@property (nonatomic,copy) OperationBlock operation;

-(instancetype)initWithIcon:(NSString *)icon title:(NSString *)title;
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title;
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title vcClass:(Class)vcClass;


@end
