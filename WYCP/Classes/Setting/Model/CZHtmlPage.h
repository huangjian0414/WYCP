//
//  CZHtmlPage.h
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/25.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZHtmlPage : NSObject

@property (nonatomic,copy)NSString *title;
@property (nonatomic,copy)NSString *html;
@property (nonatomic,copy)NSString *ID;


-(instancetype)initWithDict:(NSDictionary *)dict;
+(instancetype)htmlPageWithDict:(NSDictionary *)dict;
@end
