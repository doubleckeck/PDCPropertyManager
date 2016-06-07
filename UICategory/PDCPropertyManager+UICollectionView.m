//
//  PDCPropertyManager+UICollectionView.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+UICollectionView.h"

@implementation PDCPropertyManager (UICollectionView)

-(pdc_cl_layout )cl_layout
{
    return ^PDCPropertyManager *(UICollectionViewLayout *layout){
        self.pdc_collectionView.collectionViewLayout = layout;
        return self;
    };
}

-(pdc_cl_delegate )cl_delegate
{
    return ^PDCPropertyManager *(id <UICollectionViewDelegate> delegate){
        self.pdc_collectionView.delegate = delegate;
        return self;
    };
}

-(pdc_cl_dataSource )cl_dataSource
{
    return ^PDCPropertyManager *(id <UICollectionViewDataSource> dataSource){
        self.pdc_collectionView.dataSource = dataSource;
        return self;
    };
}

-(pdc_view )cl_backgroundView
{
    return ^PDCPropertyManager *(UIView *backgroundView){
        self.pdc_collectionView.backgroundView = backgroundView;
        return self;
    };
}
@end
