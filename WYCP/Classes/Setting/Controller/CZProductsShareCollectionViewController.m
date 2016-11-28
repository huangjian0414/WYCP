//
//  CZProductsShareCollectionViewController.m
//  网易彩票
//
//  Created by geekgourp-1 on 16/7/25.
//  Copyright (c) 2016年 geekgourp-1. All rights reserved.
//

#import "CZProductsShareCollectionViewController.h"
#import "CZProduct.h"
#import "CZProductCell.h"

@interface CZProductsShareCollectionViewController ()

@property (nonatomic,strong)NSArray *products;
@end

@implementation CZProductsShareCollectionViewController

-(NSArray *)products
{
    if (!_products) {
        NSString *filePath=[[NSBundle mainBundle]pathForResource:@"products.json" ofType:nil];
        NSData *data=[NSData dataWithContentsOfFile:filePath];
        
        NSArray *productArr= [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        
        NSMutableArray *productsM=[NSMutableArray array];
        for (NSDictionary *dict in productArr) {
            CZProduct *product=[CZProduct productWithDict:dict];
            [productsM addObject:product];
        }
        _products=productsM;
    }
    
    return _products;
}


static NSString * const reuseIdentifier = @"Cell";

-(instancetype)init
{
    //流水布局
    UICollectionViewFlowLayout *flowLayout=[[UICollectionViewFlowLayout alloc]init];
    if (self=[super initWithCollectionViewLayout:flowLayout]) {
        //最终cell的大小 是由流水布局决定，由xib决定不了
        flowLayout.itemSize=CGSizeMake(80, 100);
        
        //行间距
        flowLayout.minimumLineSpacing=50;
        
        //列间距
     //   flowLayout.minimumInteritemSpacing=10;
        
        //四边距
   //     flowLayout.sectionInset=UIEdgeInsetsMake(20, 0, 0, 0);
        
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collectionView.backgroundColor=[UIColor whiteColor];
    //注册一个循环引用的cell
    [self.collectionView registerClass:[CZProductCell class] forCellWithReuseIdentifier:reuseIdentifier];
    [self.collectionView registerNib:[UINib nibWithNibName:@"CZProductCell" bundle:nil] forCellWithReuseIdentifier:reuseIdentifier];
    
    
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return self.products.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CZProductCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell.product=self.products[indexPath.row];
    
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}
@end
