//
//  PDCPropertyManager+UILabel.h
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

@interface PDCPropertyManager (UILabel)
/* property */
@property (nonatomic, readonly, copy) pdc_string        lb_text;

@property (nonatomic, readonly, copy) pdc_font          lb_font;

@property (nonatomic, readonly, copy) pdc_color         lb_textColor;

@property (nonatomic, readonly, copy) pdc_color         lb_shadowColor;

@property (nonatomic, readonly, copy) pdc_size          lb_shadowOffset;

@property (nonatomic, readonly, copy) pdc_textAlignment lb_textAlignment;

@property (nonatomic, readonly, copy) pdc_lineBreakMode lb_lineBreakMode;

@property (nonatomic, readonly, copy) pdc_attributedString  lb_attributedText;

@property (nonatomic, readonly, copy) pdc_color         lb_highlightedTextColor;

@property (nonatomic, readonly, copy) pdc_bool          lb_highlighted;

@property (nonatomic, readonly, copy) pdc_bool          lb_userInteractionEnabled;

@property (nonatomic, readonly, copy) pdc_bool          lb_enabled;

@property (nonatomic, readonly, copy) pdc_integer       lb_numberOfLines;

@property (nonatomic, readonly, copy) pdc_bool          lb_adjustsFontSizeToFitWidth;

@property (nonatomic, readonly, copy) pdc_baselineAdjustment lb_baselineAdjustment;

@property (nonatomic, readonly, copy) pdc_float         lb_minimumScaleFactor NS_AVAILABLE_IOS(6_0);

@property (nonatomic, readonly, copy) pdc_bool          lb_allowsDefaultTighteningForTruncation NS_AVAILABLE_IOS(9_0);

@property (nonatomic, readonly, copy) pdc_float         lb_preferredMaxLayoutWidth NS_AVAILABLE_IOS(6_0);

/* method */
@end
