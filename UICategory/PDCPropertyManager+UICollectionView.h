//
//  PDCPropertyManager+UICollectionView.h
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

typedef PDCPropertyManager *(^pdc_cl_layout)(UICollectionViewLayout *);
typedef PDCPropertyManager *(^pdc_cl_delegate)(id <UICollectionViewDelegate> );
typedef PDCPropertyManager *(^pdc_cl_dataSource)(id <UICollectionViewDataSource>);

@interface PDCPropertyManager (UICollectionView)

@property (nonatomic, readonly, copy) pdc_cl_layout cl_layout;

@property (nonatomic, readonly, copy) pdc_cl_delegate cl_delegate;

@property (nonatomic, readonly, copy) pdc_cl_dataSource cl_dataSource;

@property (nonatomic, readonly, copy) pdc_view cl_backgroundView;
@end
