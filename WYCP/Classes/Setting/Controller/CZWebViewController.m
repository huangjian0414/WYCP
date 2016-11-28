//
//  CZWebViewController.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/25.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZWebViewController.h"
#import "CZHtmlPage.h"

@interface CZWebViewController ()<UIWebViewDelegate>

@property (nonatomic,weak)UIWebView *webView;
@end

@implementation CZWebViewController

-(void)loadView
{
    UIWebView *webView=[[UIWebView alloc]init];
    webView.delegate=self;
    self.view=webView;
    self.webView=webView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=self.htmlPage.title;
    
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"取消" style:UIBarButtonItemStylePlain target:self action:@selector(btnClick)];
    self.view.backgroundColor=[UIColor whiteColor];
    
    NSURL *url=[[NSBundle mainBundle]URLForResource:self.htmlPage.html withExtension:nil];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    
    [self.webView loadRequest:request];
    
    
}
-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    if (!self.htmlPage.ID) return;
    
    NSString *jsStr=[NSString stringWithFormat:@"window.location.href='#%@'",self.htmlPage.ID];
    [webView stringByEvaluatingJavaScriptFromString:jsStr];
}



-(void)btnClick
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
