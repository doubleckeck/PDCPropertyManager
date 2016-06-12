//
//  PDCPropertyManager.h
//  UICategory
//
//  Created by KH on 16/6/4.
//  Copyright © 2016年 KH. All rights */
#import <Foundation/Foundation.h>

#define PDC_DONE

@import UIKit;
@class PDCPropertyManager;

typedef PDCPropertyManager *(^pdc_void)(void);
typedef PDCPropertyManager *(^pdc_float)(CGFloat);
typedef PDCPropertyManager *(^pdc_bool)(BOOL);
typedef PDCPropertyManager *(^pdc_bool_bool)(BOOL,BOOL);
typedef PDCPropertyManager *(^pdc_point_bool)(CGPoint ,BOOL);
typedef PDCPropertyManager *(^pdc_integer)(NSInteger);
typedef PDCPropertyManager *(^pdc_uinteger)(NSUInteger);
typedef PDCPropertyManager *(^pdc_edgeInsets)(UIEdgeInsets);
typedef PDCPropertyManager *(^pdc_rect)(CGRect);
typedef PDCPropertyManager *(^pdc_point)(CGPoint);
typedef PDCPropertyManager *(^pdc_size)(CGSize);
typedef PDCPropertyManager *(^pdc_range)(NSRange);
typedef PDCPropertyManager *(^pdc_transform)(CGAffineTransform transform);
typedef PDCPropertyManager *(^pdc_contentMode)(UIViewContentMode );
typedef PDCPropertyManager *(^pdc_tintAdjustmentMode)(UIViewTintAdjustmentMode );
typedef PDCPropertyManager *(^pdc_dictionary)(NSDictionary *);
typedef PDCPropertyManager *(^pdc_array)(NSArray *);

typedef PDCPropertyManager *(^pdc_color)(UIColor *);
typedef PDCPropertyManager *(^pdc_view)(UIView *);
typedef PDCPropertyManager *(^pdc_image)(UIImage *);
typedef PDCPropertyManager *(^pdc_font)(UIFont *);

typedef PDCPropertyManager *(^pdc_string)(NSString *);
typedef PDCPropertyManager *(^pdc_attributedString)(NSAttributedString *);
typedef PDCPropertyManager *(^pdc_textAlignment)(NSTextAlignment );
typedef PDCPropertyManager *(^pdc_lineBreakMode)(NSLineBreakMode );
typedef PDCPropertyManager *(^pdc_baselineAdjustment)(UIBaselineAdjustment );

typedef PDCPropertyManager *(^pdc_ct_action)(id target,SEL sel,UIControlEvents controlEvents);

@interface PDCPropertyManager : NSObject
#pragma mark - UIView   normal property and method
/* property */
@property (nonatomic, readonly, copy) pdc_float     x;

@property (nonatomic, readonly, copy) pdc_float     y;

@property (nonatomic, readonly, copy) pdc_float     width;

@property (nonatomic, readonly, copy) pdc_float     height;

@property (nonatomic, readonly, copy) pdc_rect      frame;

@property (nonatomic, readonly, copy) pdc_rect      bounds;

@property (nonatomic, readonly, copy) pdc_point     center;

@property (nonatomic, readonly, copy) pdc_transform transform;

@property (nonatomic, readonly, copy) pdc_color     backgroundColor;

@property (nonatomic, readonly, copy) pdc_bool      clipsToBounds;

@property (nonatomic, readonly, copy) pdc_bool      hidden;

@property (nonatomic, readonly, copy) pdc_bool      opaque;

@property (nonatomic, readonly, copy) pdc_bool      clearsContextBeforeDrawing;

@property (nonatomic, readonly, copy) pdc_float     alpha;

@property (nonatomic, readonly, copy) pdc_color     tintColor NS_AVAILABLE_IOS(7_0);

@property (nonatomic, readonly, copy) pdc_tintAdjustmentMode tintAdjustmentMode NS_AVAILABLE_IOS(7_0);

@property (nonatomic, readonly, copy) pdc_integer   tag;

@property (nonatomic, readonly, copy) pdc_bool      userInteractionEnabled;

@property (nonatomic, readonly, copy) pdc_edgeInsets layoutMargins NS_AVAILABLE_IOS(8_0);

/* method */
@property (nonatomic, readonly, copy) pdc_view      addSubView;


#pragma mark - UIControl    target action method
@property (nonatomic, readonly, copy) pdc_ct_action action;         //add target use this property

@property (nonatomic, readonly, copy) pdc_ct_action removeAction;   //remove target use this property


/* category use,overlook */
@property (nonatomic, weak) id                      main;           //clear is UIControl or UIView

@property (nonatomic, weak) __kindof UIView                  *pdc_view;     PDC_DONE
@property (nonatomic, weak) __kindof UIButton                *pdc_button;   PDC_DONE    //bt
@property (nonatomic, weak) __kindof UILabel                 *pdc_label;    PDC_DONE    //lb
@property (nonatomic, weak) __kindof UITextField             *pdc_textField;PDC_DONE    //tf
@property (nonatomic, weak) __kindof UIImageView             *pdc_imageView;PDC_DONE    //iv
@property (nonatomic, weak) __kindof UITextView              *pdc_textView; PDC_DONE    //tv

@property (nonatomic, weak) __kindof UIScrollView            *pdc_scrollView;    //sc
@property (nonatomic, weak) __kindof UITableView             *pdc_tableView;     //tb
@property (nonatomic, weak) __kindof UITableViewCell         *pdc_tableViewCell;        PDC_DONE   //tbc
@property (nonatomic, weak) __kindof UICollectionView        *pdc_collectionView;       PDC_DONE   //cl
@property (nonatomic, weak) __kindof UICollectionViewCell    *pdc_collectionViewCell;   PDC_DONE   //clc
@property (nonatomic, weak) __kindof UIWebView               *pdc_webView;       //web
@property (nonatomic, weak) __kindof UIActivityIndicatorView *pdc_activityIndicatorView; //act
@property (nonatomic, weak) __kindof UIProgressView          *pdc_progressView;  //pro
@property (nonatomic, weak) __kindof UIPickerView            *pdc_pickView;      //pick

@property (nonatomic, weak) __kindof UISwitch                *pdc_switch;        //swh
@property (nonatomic, weak) __kindof UIPageControl           *pdc_pageControl;   //page
@property (nonatomic, weak) __kindof UISlider                *pdc_slider;        //sld
@property (nonatomic, weak) __kindof UISegmentedControl      *pdc_segmentedControl;  //seg
@property (nonatomic, weak) __kindof UIStepper               *pdc_stepper;       //stp
@property (nonatomic, weak) __kindof UIDatePicker            *pdc_datePicker;    //dpk

@property (nonatomic, weak) __kindof UIStackView             *pdc_stackView NS_CLASS_AVAILABLE_IOS(9_0);     //stv
@end

/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 |
 |  create at 2016-06-04 1pm,less property.
 |
 |  reconstruction 2016-06-06 all day.
 |
 |
 */
