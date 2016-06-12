//
//  PDCPropertyManager+UIScrollView.h
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

typedef PDCPropertyManager *(^pdc_sc_delegate)(id<UIScrollViewDelegate> );
typedef PDCPropertyManager *(^pdc_sc_scrollViewIndicatorStyle)(UIScrollViewIndicatorStyle );
typedef PDCPropertyManager *(^pdc_sc_scrollViewKeyboardDismissMode)(UIScrollViewKeyboardDismissMode );

@interface PDCPropertyManager (UIScrollView)

@property (nonatomic, readonly, copy) pdc_point   sc_contentOffset;

@property (nonatomic, readonly, copy) pdc_point_bool sc_contentOffset_animation;

@property (nonatomic, readonly, copy) pdc_size   sc_contentSize;

@property (nonatomic, readonly, copy) pdc_edgeInsets   sc_contentInset;

@property (nonatomic, readonly, copy) pdc_sc_delegate   sc_delegate;

@property (nonatomic, readonly, copy) pdc_bool   sc_directionalLockEnabled;

@property (nonatomic, readonly, copy) pdc_bool   sc_bounces;

@property (nonatomic, readonly, copy) pdc_bool   sc_alwaysBounceVertical;

@property (nonatomic, readonly, copy) pdc_bool   sc_alwaysBounceHorizontal;

@property (nonatomic, readonly, copy) pdc_bool   sc_pagingEnabled;

@property (nonatomic, readonly, copy) pdc_bool   sc_scrollEnabled;

@property (nonatomic, readonly, copy) pdc_bool   sc_showsHorizontalScrollIndicator;

@property (nonatomic, readonly, copy) pdc_bool   sc_showsVerticalScrollIndicator;

@property (nonatomic, readonly, copy) pdc_edgeInsets   sc_scrollIndicatorInsets;

@property (nonatomic, readonly, copy) pdc_sc_scrollViewIndicatorStyle   sc_indicatorStyle;

@property (nonatomic, readonly, copy) pdc_float   sc_decelerationRate;

@property (nonatomic, readonly, copy) pdc_bool   sc_delaysContentTouches;

@property (nonatomic, readonly, copy) pdc_bool   sc_canCancelContentTouches;

@property (nonatomic, readonly, copy) pdc_float   sc_minimumZoomScale;

@property (nonatomic, readonly, copy) pdc_float   sc_maximumZoomScale;

@property (nonatomic, readonly, copy) pdc_bool   sc_bouncesZoom;

@property (nonatomic, readonly, copy) pdc_bool   sc_scrollsToTop;

@property (nonatomic, readonly, copy) pdc_sc_scrollViewKeyboardDismissMode   sc_keyboardDismissMode NS_AVAILABLE_IOS(7_0);

@end
