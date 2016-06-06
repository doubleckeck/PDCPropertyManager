//
//  PDCPropertyManager.h
//  UICategory
//
//  Created by KH on 16/6/4.
//  Copyright © 2016年 KH. All rights */
#import <Foundation/Foundation.h>
@import UIKit;
@class PDCPropertyManager;
typedef PDCPropertyManager *(^pdc_float)(CGFloat);
typedef PDCPropertyManager *(^pdc_bool)(BOOL);
typedef PDCPropertyManager *(^pdc_integer)(NSInteger);
typedef PDCPropertyManager *(^pdc_uinteger)(NSUInteger);
typedef PDCPropertyManager *(^pdc_edgeInsets)(UIEdgeInsets);
typedef PDCPropertyManager *(^pdc_rect)(CGRect);
typedef PDCPropertyManager *(^pdc_point)(CGPoint);
typedef PDCPropertyManager *(^pdc_size)(CGPoint);
typedef PDCPropertyManager *(^pdc_transform)(CGAffineTransform transform);
typedef PDCPropertyManager *(^pdc_contentMode)(UIViewContentMode );
typedef PDCPropertyManager *(^pdc_tintAdjustmentMode)(UIViewTintAdjustmentMode );

typedef PDCPropertyManager *(^pdc_color)(UIColor *);
typedef PDCPropertyManager *(^pdc_view)(UIView *);
typedef PDCPropertyManager *(^pdc_image)(UIImage *);
typedef PDCPropertyManager *(^pdc_font)(UIFont *);

typedef PDCPropertyManager *(^pdc_string)(NSString *);
typedef PDCPropertyManager *(^pdc_attributedString)(NSAttributedString *);
typedef PDCPropertyManager *(^pdc_textAlignment)(NSTextAlignment );
typedef PDCPropertyManager *(^pdc_lineBreakMode)(NSLineBreakMode );
typedef PDCPropertyManager *(^pdc_baselineAdjustment)(UIBaselineAdjustment );

typedef PDCPropertyManager *(^pdc_bt_text)(NSString *,UIControlState);
typedef PDCPropertyManager *(^pdc_bt_color)(UIColor *,UIControlState);
typedef PDCPropertyManager *(^pdc_bt_image)(UIImage *,UIControlState);
typedef PDCPropertyManager *(^pdc_bt_attributedString)(NSAttributedString *,UIControlState);

typedef PDCPropertyManager *(^pdc_ct_action)(id target,SEL sel,UIControlEvents controlEvents);

@interface PDCPropertyManager : NSObject
#pragma mark - UIView
@property (nonatomic, weak) UIView *pdc_view;
/* property */
@property (nonatomic, readonly, copy) pdc_float x;
@property (nonatomic, readonly, copy) pdc_float y;
@property (nonatomic, readonly, copy) pdc_float width;
@property (nonatomic, readonly, copy) pdc_float height;
@property (nonatomic, readonly, copy) pdc_rect frame;
@property (nonatomic, readonly, copy) pdc_rect bounds;
@property (nonatomic, readonly, copy) pdc_point center;
@property (nonatomic, readonly, copy) pdc_transform transform;

@property (nonatomic, readonly, copy) pdc_color backgroundColor;
@property (nonatomic, readonly, copy) pdc_bool clipsToBounds;
@property (nonatomic, readonly, copy) pdc_bool hidden;
@property (nonatomic, readonly, copy) pdc_bool opaque;
@property (nonatomic, readonly, copy) pdc_bool clearsContextBeforeDrawing;
@property (nonatomic, readonly, copy) pdc_float alpha;

@property (nonatomic, readonly, copy) pdc_color tintColor NS_AVAILABLE_IOS(7_0);
@property (nonatomic, readonly, copy) pdc_tintAdjustmentMode tintAdjustmentMode NS_AVAILABLE_IOS(7_0);

@property (nonatomic, readonly, copy) pdc_integer tag;
@property (nonatomic, readonly, copy) pdc_bool userInteractionEnabled;

@property (nonatomic, readonly, copy) pdc_edgeInsets layoutMargins NS_AVAILABLE_IOS(8_0);

/* method */
@property (nonatomic, readonly, copy) pdc_view addSubView;


#pragma mark - UIControl
@property (nonatomic, readonly, copy) pdc_ct_action action;

@property (nonatomic, weak) UIButton *pdc_button;
@property (nonatomic, weak) UILabel *pdc_label;
@property (nonatomic, weak) UITextField *pdc_textField;
@property (nonatomic, weak) UITextView *pdc_textView;
@property (nonatomic, weak) UIImageView *pdc_imageView;

@end

/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 |
 |  create at 2016-06-04 1pm,less property.
 */
