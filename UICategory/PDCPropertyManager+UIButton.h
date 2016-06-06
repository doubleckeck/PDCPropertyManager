//
//  PDCPropertyManager+UIButton.h
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

typedef PDCPropertyManager *(^pdc_bt_text)(NSString *,UIControlState);
typedef PDCPropertyManager *(^pdc_bt_color)(UIColor *,UIControlState);
typedef PDCPropertyManager *(^pdc_bt_image)(UIImage *,UIControlState);
typedef PDCPropertyManager *(^pdc_bt_attributedString)(NSAttributedString *,UIControlState);

@interface PDCPropertyManager (UIButton)
/* property */
@property (nonatomic, readonly, copy) pdc_edgeInsets bt_contentEdgeInsets;

@property (nonatomic, readonly, copy) pdc_edgeInsets bt_titleEdgeInsets;

@property (nonatomic, readonly, copy) pdc_edgeInsets bt_imageEdgeInsets;

@property (nonatomic, readonly, copy) pdc_bool bt_reversesTitleShadowWhenHighlighted;

@property (nonatomic, readonly, copy) pdc_bool bt_adjustsImageWhenHighlighted;

@property (nonatomic, readonly, copy) pdc_bool bt_adjustsImageWhenDisabled;

@property (nonatomic, readonly, copy) pdc_bool bt_showsTouchWhenHighlighted __TVOS_PROHIBITED;

/* method */
@property (nonatomic, readonly, copy) pdc_bt_text   bt_title;

@property (nonatomic, readonly, copy) pdc_string    bt_titleLabel;

@property (nonatomic, readonly, copy) pdc_bt_color  bt_titleColor;

@property (nonatomic, readonly, copy) pdc_bt_color  bt_titleShadowColor;

@property (nonatomic, readonly, copy) pdc_bt_image  bt_image;

@property (nonatomic, readonly, copy) pdc_bt_image  bt_backgroundImage;

@property (nonatomic, readonly, copy) pdc_bt_attributedString bt_attributedTitle;

@end
