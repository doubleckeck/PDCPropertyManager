//
//  PDCPropertyManager+UITextField.h
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

typedef PDCPropertyManager *(^pdc_tf_delegate)(id<UITextFieldDelegate>);
typedef PDCPropertyManager *(^pdc_tf_borderStyle)(UITextBorderStyle );
typedef PDCPropertyManager *(^pdc_textFieldViewMode)(UITextFieldViewMode);

@interface PDCPropertyManager (UITextField)
//property
@property (nonatomic, readonly, copy) pdc_tf_delegate       tf_delegate;

@property (nonatomic, readonly, copy) pdc_string            tf_text;

@property (nonatomic, readonly, copy) pdc_string            tf_placeholder;

@property (nonatomic, readonly, copy) pdc_attributedString  tf_attributedText;

@property (nonatomic, readonly, copy) pdc_font              tf_font;

@property (nonatomic, readonly, copy) pdc_textAlignment     tf_textAlignment;

@property (nonatomic, readonly, copy) pdc_tf_borderStyle    tf_borderStyle;

@property (nonatomic, readonly, copy) pdc_dictionary        tf_defaultTextAttributes;

@property (nonatomic, readonly, copy) pdc_attributedString  tf_attributedPlaceholder;

@property (nonatomic, readonly, copy) pdc_bool              tf_clearsOnBeginEditing;

@property (nonatomic, readonly, copy) pdc_bool              tf_adjustsFontSizeToFitWidth;

@property (nonatomic, readonly, copy) pdc_float             tf_minimumFontSize;

@property (nonatomic, readonly, copy) pdc_image             tf_background;

@property (nonatomic, readonly, copy) pdc_image             tf_disabledBackground;

@property (nonatomic, readonly, copy) pdc_bool              tf_allowsEditingTextAttributes;

@property (nonatomic, readonly, copy) pdc_dictionary        tf_typingAttributes;

@property (nonatomic, readonly, copy) pdc_textFieldViewMode tf_clearButtonMode;

@property (nonatomic, readonly, copy) pdc_textFieldViewMode tf_leftViewMode;

@property (nonatomic, readonly, copy) pdc_textFieldViewMode tf_rightViewMode;

@property (nonatomic, readonly, copy) pdc_view              tf_leftView;

@property (nonatomic, readonly, copy) pdc_view              tf_rightView;

@property (nonatomic, readonly, copy) pdc_view              tf_inputView;

@property (nonatomic, readonly, copy) pdc_view              tf_inputAccessoryView;

//method

@end
