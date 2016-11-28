//
//  CZSettingGroup.h
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/25.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZSettingGroup : NSObject

@property (nonatomic,copy)NSString *headerTitle;
@property (nonatomic,copy)NSString *footerTitle;


@property (nonatomic,strong)NSArray *items;
@end
