//
//  PDCPropertyManager+UIScrollView.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+UIScrollView.h"

@implementation PDCPropertyManager (UIScrollView)
-(pdc_point )sc_contentOffset
{
    return ^PDCPropertyManager *(CGPoint point){
        self.pdc_scrollView.contentOffset = point;
        return self;
    };
}

-(pdc_point_bool )sc_contentOffset_animation
{
    return ^PDCPropertyManager *(CGPoint point,BOOL animation){
        [self.pdc_scrollView setContentOffset:point animated:animation];
        return self;
    };
}

-(pdc_size )sc_contentSize
{
    return ^PDCPropertyManager *(CGSize size){
        self.pdc_scrollView.contentSize = size;
        return self;
    };
}

-(pdc_edgeInsets )sc_contentInset
{
    return ^PDCPropertyManager *(UIEdgeInsets edgeInset){
        self.pdc_scrollView.contentInset = edgeInset;
        return self;
    };
}

-(pdc_sc_delegate )sc_delegate
{
    return ^PDCPropertyManager *(id<UIScrollViewDelegate> delegate){
        self.pdc_scrollView.delegate = delegate;
        return self;
    };
}

-(pdc_bool )sc_directionalLockEnabled
{
    return ^PDCPropertyManager *(BOOL directionalLockEnabled){
        self.pdc_scrollView.directionalLockEnabled = directionalLockEnabled;
        return self;
    };
}

-(pdc_bool )sc_bounces
{
    return ^PDCPropertyManager *(BOOL bounces){
        self.pdc_scrollView.bounces = bounces;
        return self;
    };
}

-(pdc_bool )sc_alwaysBounceVertical
{
    return ^PDCPropertyManager *(BOOL alwaysBounceVertical){
        self.pdc_scrollView.alwaysBounceVertical = alwaysBounceVertical;
        return self;
    };
}

-(pdc_bool )sc_alwaysBounceHorizontal
{
    return ^PDCPropertyManager *(BOOL alwaysBounceHorizontal){
        self.pdc_scrollView.alwaysBounceHorizontal = alwaysBounceHorizontal;
        return self;
    };
}

-(pdc_bool )sc_pagingEnabled
{
    return ^PDCPropertyManager *(BOOL pagingEnabled){
        self.pdc_scrollView.pagingEnabled = pagingEnabled;
        return self;
    };
}

-(pdc_bool )sc_scrollEnabled
{
    return ^PDCPropertyManager *(BOOL scrollEnabled){
        self.pdc_scrollView.scrollEnabled = scrollEnabled;
        return self;
    };
}

-(pdc_bool )sc_showsHorizontalScrollIndicator
{
    return ^PDCPropertyManager *(BOOL showsHorizontalScrollIndicator){
        self.pdc_scrollView.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator;
        return self;
    };
}

-(pdc_bool )sc_showsVerticalScrollIndicator
{
    return ^PDCPropertyManager *(BOOL showsVerticalScrollIndicator){
        self.pdc_scrollView.showsVerticalScrollIndicator = showsVerticalScrollIndicator;
        return self;
    };
}

-(pdc_edgeInsets )sc_scrollIndicatorInsets
{
    return ^PDCPropertyManager *(UIEdgeInsets scrollIndicatorInsets){
        self.pdc_scrollView.scrollIndicatorInsets = scrollIndicatorInsets;
        return self;
    };
}

-(pdc_sc_scrollViewIndicatorStyle )sc_indicatorStyle
{
    return ^PDCPropertyManager *(UIScrollViewIndicatorStyle indicatorStyle){
        self.pdc_scrollView.indicatorStyle = indicatorStyle;
        return self;
    };
}

-(pdc_float )sc_decelerationRate
{
    return ^PDCPropertyManager *(CGFloat decelerationRate){
        self.pdc_scrollView.decelerationRate = decelerationRate;
        return self;
    };
}


-(pdc_bool )sc_delaysContentTouches
{
    return ^PDCPropertyManager *(BOOL delaysContentTouches){
        self.pdc_scrollView.delaysContentTouches = delaysContentTouches;
        return self;
    };
}

-(pdc_bool )sc_canCancelContentTouches
{
    return ^PDCPropertyManager *(BOOL canCancelContentTouches){
        self.pdc_scrollView.canCancelContentTouches = canCancelContentTouches;
        return self;
    };
}

-(pdc_float )sc_minimumZoomScale
{
    return ^PDCPropertyManager *(CGFloat minimumZoomScale){
        self.pdc_scrollView.minimumZoomScale = minimumZoomScale;
        return self;
    };
}

-(pdc_float )sc_maximumZoomScale
{
    return ^PDCPropertyManager *(CGFloat maximumZoomScale){
        self.pdc_scrollView.maximumZoomScale = maximumZoomScale;
        return self;
    };
}

-(pdc_bool )sc_bouncesZoom
{
    return ^PDCPropertyManager *(BOOL bouncesZoom){
        self.pdc_scrollView.bouncesZoom = bouncesZoom;
        return self;
    };
}

-(pdc_bool )sc_scrollsToTop
{
    return ^PDCPropertyManager *(BOOL scrollsToTop){
        self.pdc_scrollView.scrollsToTop = scrollsToTop;
        return self;
    };
}

-(pdc_sc_scrollViewKeyboardDismissMode )sc_keyboardDismissMode
{
    return ^PDCPropertyManager *(UIScrollViewKeyboardDismissMode keyboardDismissMode){
        self.pdc_scrollView.keyboardDismissMode = keyboardDismissMode;
        return self;
    };
}

@end
