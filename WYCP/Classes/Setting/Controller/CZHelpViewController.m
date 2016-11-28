//
//  CZHelpViewController.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/25.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZHelpViewController.h"
#import "CZHtmlPage.h"
#import "CZSettingGroup.h"
#import "CZSettingArrowitem.h"
#import "CZWebViewController.h"

@interface CZHelpViewController ()

@property (nonatomic,strong)NSArray *htmls;
@end

@implementation CZHelpViewController

-(NSArray *)htmls
{
    if (!_htmls) {
        NSString *filePath=[[NSBundle mainBundle]pathForResource:@"help.json" ofType:nil];
        NSData *data=[NSData dataWithContentsOfFile:filePath];
        
        NSArray *helpArr= [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        
        NSMutableArray *htmlsM=[NSMutableArray array];
        for (NSDictionary *dict in helpArr) {
            CZHtmlPage *htmlPage=[CZHtmlPage htmlPageWithDict:dict];
            [htmlsM addObject:htmlPage];
        }
        _htmls=htmlsM;
    }
    
    return _htmls;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //把htmls的数据转成celldata显示的数据
    CZSettingGroup *group=[[CZSettingGroup alloc]init];
    NSMutableArray *items=[NSMutableArray array];
    for (CZHtmlPage *htmlPage in self.htmls) {
        CZSettingArrowitem *item=[CZSettingArrowitem itemWithIcon:nil title:htmlPage.title];
        [items addObject:item];
    }
    group.items=items;
    
    [self.cellData addObject:group];
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    CZWebViewController *webVc=[[CZWebViewController alloc]init];
    
    webVc.htmlPage=self.htmls[indexPath.row];
    
    UINavigationController *nav=[[UINavigationController alloc]initWithRootViewController:webVc];
    
    
    
    [self presentViewController:nav animated:YES completion:nil];
    
    
}




@end
