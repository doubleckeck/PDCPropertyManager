//
//  UIView+PDCAdd.m
//  UICategory
//
//  Created by KH on 16/6/4.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "UIView+PDCAdd.h"
#import <objc/runtime.h>
@implementation UIView (PDCAdd)
-(void )setPdc_manager:(PDCPropertyManager *)pdc_manager
{
    objc_setAssociatedObject(self, @selector(pdc_manager), pdc_manager, OBJC_ASSOCIATION_RETAIN);
}

-(PDCPropertyManager *)pdc_manager
{
    PDCPropertyManager *manager = [self pr_ownerWithKey:_cmd];
    if (nil == manager)
    {
        manager = [PDCPropertyManager new];
    }
    
    manager.main = self;    //clear is UIControl or UIView
    
//    //is UIView
//    if ([self isKindOfClass:[UIView class]])
//    {
//        manager.pdc_view = self;
//    }
    
    //is UILabel or subclass    --- 0 ---
    if ([self isKindOfClass:[UILabel class]])
    {
        manager.pdc_label = (UILabel *)self;
    }
    
    //is UIButton or subclass
    else if ([self isKindOfClass:[UIButton class]])
    {
        manager.pdc_button = (UIButton *)self;
    }
    
    //is UITextField or subclass
    else if ([self isKindOfClass:[UITextField class]])
    {
        manager.pdc_textField = (UITextField *)self;
    }
    
    //is UIImageView or subclass
    else if ([self isKindOfClass:[UIImageView class]])
    {
        manager.pdc_imageView = (UIImageView *)self;
    }
    
    //is UITextView or subclass    --- 4 ---
    else if ([self isKindOfClass:[UITextView class]])
    {
        manager.pdc_scrollView = (UIScrollView *)self;
        manager.pdc_textView = (UITextView *)self;
    }
    
    //is UIScrollView or subclass
    else if ([self isKindOfClass:[UIScrollView class]])
    {
        manager.pdc_scrollView = (UIScrollView *)self;
    }
    //is UITableView or subclass
    else if ([self isKindOfClass:[UITableView class]])
    {
        manager.pdc_scrollView = (UIScrollView *)self;
        manager.pdc_tableView = (UITableView *)self;
    }
    
    //is UITableViewCell or subclass
    else if ([self isKindOfClass:[UITableViewCell class]])
    {
        manager.pdc_tableViewCell = (UITableViewCell *)self;
    }
    
    //is UICollectionView or subclass    --- 8 ---
    else if ([self isKindOfClass:[UICollectionView class]])
    {
        manager.pdc_scrollView = (UIScrollView *)self;
        manager.pdc_collectionView = (UICollectionView *)self;
    }
    
    //is UICollectionViewCell or subclass
    else if ([self isKindOfClass:[UICollectionViewCell class]])
    {
        manager.pdc_collectionViewCell = (UICollectionViewCell *)self;
    }
    //is UIWebView or subclass
    else if ([self isKindOfClass:[UIWebView class]])
    {
        manager.pdc_webView = (UIWebView *)self;
    }
    
    //is UIActivityIndicatorView or subclass
    else if ([self isKindOfClass:[UIActivityIndicatorView class]])
    {
        manager.pdc_activityIndicatorView = (UIActivityIndicatorView *)self;
    }
    //is UIProgressView or subclass    --- 12 ---
    else if ([self isKindOfClass:[UIProgressView class]])
    {
        manager.pdc_progressView = (UIProgressView *)self;
    }
    
    //is UIPickerView or subclass
    else if ([self isKindOfClass:[UIPickerView class]])
    {
        manager.pdc_pickView = (UIPickerView *)self;
    }
    
    //is UISwitch or subclass
    else if ([self isKindOfClass:[UISwitch class]])
    {
        manager.pdc_switch = (UISwitch *)self;
    }
    
    //is UIPageControl or subclass
    else if ([self isKindOfClass:[UIPageControl class]])
    {
        manager.pdc_pageControl = (UIPageControl *)self;
    }
    
    //is UISlider or subclass    --- 16 ---
    else if ([self isKindOfClass:[UISlider class]])
    {
        manager.pdc_slider = (UISlider *)self;
    }
    
    //is UISegmentedControl or subclass
    else if ([self isKindOfClass:[UISegmentedControl class]])
    {
        manager.pdc_segmentedControl = (UISegmentedControl *)self;
    }
    
    //is UIStepper or subclass
    else if ([self isKindOfClass:[UIStepper class]])
    {
        manager.pdc_stepper = (UIStepper *)self;
    }
    
    //is UIDatePicker or subclass
    else if ([self isKindOfClass:[UIDatePicker class]])
    {
        manager.pdc_datePicker = (UIDatePicker *)self;
    }
    
    //其他类不支持
    else
    {
//        manager = nil;
    }
    return manager;
}

-(PDCPropertyManager *)pr_ownerWithKey:(void *)key
{
    return objc_getAssociatedObject(self, key);
}


/* x,y,midX,midY,maxX,maxY,width,height */
-(void )setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

-(CGFloat )x
{
    return CGRectGetMinX(self.frame);
}

-(void )setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

-(CGFloat )y
{
    return CGRectGetMinY(self.frame);
}

-(CGFloat )midX
{
    return CGRectGetMidX(self.frame);
}

-(CGFloat )maxX
{
    return CGRectGetMaxX(self.frame);
}

-(CGFloat )midY
{
    return CGRectGetMidY(self.frame);
}

-(CGFloat )maxY
{
    return CGRectGetMaxY(self.frame);
}

-(void )setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

-(CGFloat )width
{
    return CGRectGetWidth(self.frame);
}

-(void )setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

-(CGFloat )height
{
    return CGRectGetHeight(self.frame);
}


/* origin,size */
-(void )setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

-(CGPoint )origin
{
    return self.frame.origin;
}

-(void )setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

-(CGSize )size
{
    return self.frame.size;
}
@end
