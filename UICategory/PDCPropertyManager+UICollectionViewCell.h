//
//  PDCPropertyManager+UICollectionViewCell.h
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

@interface PDCPropertyManager (UICollectionViewCell)

@property (nonatomic, readonly, copy) pdc_bool clc_selected;

@property (nonatomic, readonly, copy) pdc_bool clc_highlighted;

@property (nonatomic, readonly, copy) pdc_view clc_backgroundView;

@property (nonatomic, readonly, copy) pdc_view clc_selectedBackgroundView;

@end
