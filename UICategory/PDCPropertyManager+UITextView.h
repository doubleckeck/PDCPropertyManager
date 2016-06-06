//
//  PDCPropertyManager+UITextView.h
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

typedef PDCPropertyManager *(^pdc_tv_delegate)(id<UITextViewDelegate> );
typedef PDCPropertyManager *(^pdc_tv_dataDetectorTypes)(UIDataDetectorTypes );

@interface PDCPropertyManager (UITextView)

@property (nonatomic, readonly, copy) pdc_tv_delegate   tv_delegate;

@property (nonatomic, readonly, copy) pdc_string        tv_text;

@property (nonatomic, readonly, copy) pdc_font          tv_font;

@property (nonatomic, readonly, copy) pdc_color         tv_textColor;

@property (nonatomic, readonly, copy) pdc_textAlignment tv_textAlignment;

@property (nonatomic, readonly, copy) pdc_range         tv_selectedRange;

@property (nonatomic, readonly, copy) pdc_bool          tv_editable __TVOS_PROHIBITED;

@property (nonatomic, readonly, copy) pdc_bool          tv_selectable NS_AVAILABLE_IOS(7_0);

@property (nonatomic, readonly, copy) pdc_tv_dataDetectorTypes  tv_dataDetectorTypes NS_AVAILABLE_IOS(3_0) __TVOS_PROHIBITED;

@property (nonatomic, readonly, copy) pdc_bool          tv_allowsEditingTextAttributes NS_AVAILABLE_IOS(6_0);

@property (nonatomic, readonly, copy) pdc_attributedString      tv_attributedText NS_AVAILABLE_IOS(6_0);

@property (nonatomic, readonly, copy) pdc_dictionary    tv_typingAttributes NS_AVAILABLE_IOS(6_0);

@property (nonatomic, readonly, copy) pdc_view          tv_inputView;

@property (nonatomic, readonly, copy) pdc_view          tv_inputAccessoryView;

@property (nonatomic, readonly, copy) pdc_bool          tv_clearsOnInsertion NS_AVAILABLE_IOS(6_0);

@property (nonatomic, readonly, copy) pdc_edgeInsets    tv_textContainerInset NS_AVAILABLE_IOS(7_0);

@property (nonatomic, readonly, copy) pdc_dictionary    tv_linkTextAttributes NS_AVAILABLE_IOS(7_0);

@end
