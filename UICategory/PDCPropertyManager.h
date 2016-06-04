//
//  PDCPropertyManager.h
//  UICategory
//
//  Created by KH on 16/6/4.
//  Copyright © 2016年 KH. All rights */

/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 |
 |  create at 2016-06-04 1pm,   less property.
 */
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
typedef PDCPropertyManager *(^pdc_transform)(CGAffineTransform transform);
typedef PDCPropertyManager *(^pdc_contentMode)(UIViewContentMode );
typedef PDCPropertyManager *(^pdc_tintAdjustmentMode)(UIViewTintAdjustmentMode );

typedef PDCPropertyManager *(^pdc_color)(UIColor *);
typedef PDCPropertyManager *(^pdc_view)(UIView *);

typedef PDCPropertyManager *(^pdc_string)(NSString *);
typedef PDCPropertyManager *(^pdc_bt_text)(NSString *,UIControlState);

@interface PDCPropertyManager : NSObject
#pragma mark - view
@property (nonatomic, weak) UIView *pdc_view;
/* property */
@property (nonatomic, copy) pdc_float x;
@property (nonatomic, copy) pdc_float y;
@property (nonatomic, copy) pdc_float width;
@property (nonatomic, copy) pdc_float height;
@property (nonatomic, copy) pdc_rect frame;
@property (nonatomic, copy) pdc_rect bounds;
@property (nonatomic, copy) pdc_point center;
@property (nonatomic, copy) pdc_transform transform;

@property (nonatomic, copy) pdc_color backgroundColor;
@property (nonatomic, copy) pdc_bool clipsToBounds;
@property (nonatomic, copy) pdc_bool hidden;
@property (nonatomic, copy) pdc_bool opaque;
@property (nonatomic, copy) pdc_bool clearsContextBeforeDrawing;
@property (nonatomic, copy) pdc_float alpha;

@property (nonatomic, copy) pdc_color tintColor NS_AVAILABLE_IOS(7_0);
@property (nonatomic, copy) pdc_tintAdjustmentMode tintAdjustmentMode NS_AVAILABLE_IOS(7_0);

@property (nonatomic, copy) pdc_integer tag;
@property (nonatomic, copy) pdc_bool userInteractionEnabled;

@property (nonatomic, copy) pdc_edgeInsets layoutMargins NS_AVAILABLE_IOS(8_0);

/* method */
@property (nonatomic, copy) pdc_view addSubView;


#pragma mark button
@property (nonatomic, weak) UIButton *pdc_button;
/* property */
@property (nonatomic, copy) pdc_edgeInsets contentEdgeInsets;
@property (nonatomic, copy) pdc_edgeInsets titleEdgeInsets;
@property (nonatomic, copy) pdc_edgeInsets imageEdgeInsets;

@property (nonatomic, copy) pdc_bool reversesTitleShadowWhenHighlighted;
@property (nonatomic, copy) pdc_bool adjustsImageWhenHighlighted;
@property (nonatomic, copy) pdc_bool adjustsImageWhenDisabled;
@property (nonatomic, copy) pdc_bool showsTouchWhenHighlighted __TVOS_PROHIBITED;

/* method */
@property (nonatomic, copy) pdc_bt_text bt_title;
@property (nonatomic, copy) pdc_string bt_titleLabel;

#pragma mark - label
@property (nonatomic, weak) UILabel *pdc_label;
/* property */
@property (nonatomic, copy) pdc_string lb_text;

/* method */

#pragma mark - fieid
@property (nonatomic, weak) UITextField *pdc_textField;
/* property */

/* method */

@end
