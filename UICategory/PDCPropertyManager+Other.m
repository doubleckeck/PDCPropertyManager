//
//  PDCPropertyManager+Other.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+Other.h"

@implementation PDCPropertyManager (Other)
/* UIActivityIndicatorView */
-(pdc_act_activityIndicatorViewStyle )act_activityIndicatorViewStyle
{
    return ^PDCPropertyManager *(UIActivityIndicatorViewStyle activityIndicatorViewStyle){
        self.pdc_activityIndicatorView.activityIndicatorViewStyle = activityIndicatorViewStyle;
        return self;
    };
}

-(pdc_bool )act_hidesWhenStopped
{
    return ^PDCPropertyManager *(BOOL hidesWhenStopped){
        self.pdc_activityIndicatorView.hidesWhenStopped = hidesWhenStopped;
        return self;
    };
}

-(pdc_color )act_color
{
    return ^PDCPropertyManager *(UIColor *color){
        self.pdc_activityIndicatorView.color = color;
        return self;
    };
}

-(pdc_void )act_startAnimating
{
    return ^PDCPropertyManager *(){
        [self.pdc_activityIndicatorView startAnimating];
        return self;
    };
}

-(pdc_void )act_stopAnimating
{
    return ^PDCPropertyManager *(){
        [self.pdc_activityIndicatorView stopAnimating];
        return self;
    };
}

/* UIPickerView */
-(pdc_pick_dataSource )pick_dataSource
{
    return ^PDCPropertyManager *(id<UIPickerViewDataSource > dataSource){
        self.pdc_pickView.dataSource = dataSource;
        return self;
    };
}

-(pdc_pick_delegate )pick_delegate
{
    return ^PDCPropertyManager *(id<UIPickerViewDelegate > delegate){
        self.pdc_pickView.delegate = delegate;
        return self;
    };
}

-(pdc_bool )pick_showsSelectionIndicator
{
    return ^PDCPropertyManager *(BOOL showsSelectionIndicator){
        self.pdc_pickView.showsSelectionIndicator = showsSelectionIndicator;
        return self;
    };
}

/* UIPageControl */
-(pdc_integer )page_numberOfPages
{
    return ^PDCPropertyManager *(NSInteger numberOfPages){
        self.pdc_pageControl.numberOfPages = numberOfPages;
        return self;
    };
}

-(pdc_integer )page_currentPage
{
    return ^PDCPropertyManager *(NSInteger currentPage){
        self.pdc_pageControl.currentPage = currentPage;
        return self;
    };
}

-(pdc_bool )page_hidesForSinglePage
{
    return ^PDCPropertyManager *(BOOL hidesForSinglePage){
        self.pdc_pageControl.hidesForSinglePage = hidesForSinglePage;
        return self;
    };
}

-(pdc_bool )page_defersCurrentPageDisplay
{
    return ^PDCPropertyManager *(BOOL defersCurrentPageDisplay){
        self.pdc_pageControl.defersCurrentPageDisplay = defersCurrentPageDisplay;
        return self;
    };
}

-(pdc_color )page_pageIndicatorTintColor
{
    return ^PDCPropertyManager *(UIColor *pageIndicatorTintColor){
        self.pdc_pageControl.pageIndicatorTintColor = pageIndicatorTintColor;
        return self;
    };
}

-(pdc_color )page_currentPageIndicatorTintColor
{
    return ^PDCPropertyManager *(UIColor *currentPageIndicatorTintColor){
        self.pdc_pageControl.currentPageIndicatorTintColor = currentPageIndicatorTintColor;
        return self;
    };
}
@end
