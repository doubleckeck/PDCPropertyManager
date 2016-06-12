//
//  PDCPropertyManager+Other.h
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//


/**
 *  UIActivityIndicatorView
 *  UIPickerView
 *  UIPageControl
 */
#import "PDCPropertyManager.h"

typedef PDCPropertyManager *(^pdc_act_activityIndicatorViewStyle)(UIActivityIndicatorViewStyle );
typedef PDCPropertyManager *(^pdc_pick_dataSource)(id<UIPickerViewDataSource> );
typedef PDCPropertyManager *(^pdc_pick_delegate)(id<UIPickerViewDelegate> );

@interface PDCPropertyManager (Other)
/* UIActivityIndicatorView */
@property (nonatomic, readonly, copy) pdc_act_activityIndicatorViewStyle act_activityIndicatorViewStyle;
@property (nonatomic, readonly, copy) pdc_bool act_hidesWhenStopped;

@property (nonatomic, readonly, copy) pdc_color act_color;
@property (nonatomic, readonly, copy) pdc_void act_startAnimating;
@property (nonatomic, readonly, copy) pdc_void act_stopAnimating;

/* UIPickerView */
@property (nonatomic, readonly, copy) pdc_pick_dataSource pick_dataSource;
@property (nonatomic, readonly, copy) pdc_pick_delegate pick_delegate;
@property (nonatomic, readonly, copy) pdc_bool pick_showsSelectionIndicator;

/* UIPageControl */
@property (nonatomic, readonly, copy) pdc_integer page_numberOfPages;
@property (nonatomic, readonly, copy) pdc_integer page_currentPage;

@property (nonatomic, readonly, copy) pdc_bool page_hidesForSinglePage;
@property (nonatomic, readonly, copy) pdc_bool page_defersCurrentPageDisplay;

@property (nonatomic, readonly, copy) pdc_color page_pageIndicatorTintColor NS_AVAILABLE_IOS(6_0) UI_APPEARANCE_SELECTOR;
@property (nonatomic, readonly, copy) pdc_color page_currentPageIndicatorTintColor NS_AVAILABLE_IOS(6_0) UI_APPEARANCE_SELECTOR;
@end
