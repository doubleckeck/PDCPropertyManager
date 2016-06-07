//
//  PDCPropertyManager+UICollectionViewCell.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+UICollectionViewCell.h"

@implementation PDCPropertyManager (UICollectionViewCell)

-(pdc_bool )clc_selected
{
    return ^PDCPropertyManager *(BOOL selected){
        self.pdc_collectionViewCell.selected = selected;
        return self;
    };
}

-(pdc_bool )clc_highlighted
{
    return ^PDCPropertyManager *(BOOL highlighted){
        self.pdc_collectionViewCell.highlighted = highlighted;
        return self;
    };
}


-(pdc_view )clc_backgroundView
{
    return ^PDCPropertyManager *(UIView *backgroundView){
        self.pdc_collectionViewCell.backgroundView = backgroundView;
        return self;
    };
}

-(pdc_view )clc_selectedBackgroundView
{
    return ^PDCPropertyManager *(UIView *selectedBackgroundView){
        self.pdc_collectionViewCell.selectedBackgroundView = selectedBackgroundView;
        return self;
    };
}

@end
