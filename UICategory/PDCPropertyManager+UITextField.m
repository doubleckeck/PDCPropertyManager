//
//  PDCPropertyManager+UITextField.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+UITextField.h"

@implementation PDCPropertyManager (UITextField)
-(pdc_tf_delegate )tf_delegate
{
    return ^PDCPropertyManager *(id<UITextFieldDelegate> delegate){
        self.pdc_textField.delegate = delegate;
        return self;
    };
}

-(pdc_string )tf_text
{
    return ^PDCPropertyManager *(NSString *text){
        self.pdc_textField.text = text;
        return self;
    };
}

-(pdc_string )tf_placeholder
{
    return ^PDCPropertyManager *(NSString *placeholder){
        self.pdc_textField.placeholder = placeholder;
        return self;
    };
}

-(pdc_attributedString )tf_attributedText
{
    return ^PDCPropertyManager *(NSAttributedString *attributedText){
        self.pdc_textField.attributedText = attributedText;
        return self;
    };
}

-(pdc_attributedString )tf_attributedPlaceholder
{
    return ^PDCPropertyManager *(NSAttributedString *attributedPlaceholder){
        self.pdc_textField.attributedPlaceholder = attributedPlaceholder;
        return self;
    };
}

-(pdc_font )tf_font
{
    return ^PDCPropertyManager *(UIFont *font){
        self.pdc_textField.font = font;
        return self;
    };
}

-(pdc_textAlignment )tf_textAlignment
{
    return ^PDCPropertyManager *(NSTextAlignment textAlignment){
        self.pdc_textField.textAlignment = textAlignment;
        return self;
    };
}

-(pdc_tf_borderStyle )tf_borderStyle
{
    return ^PDCPropertyManager *(UITextBorderStyle borderStyle){
        self.pdc_textField.borderStyle = borderStyle;
        return self;
    };
}

-(pdc_dictionary )tf_defaultTextAttributes
{
    return ^PDCPropertyManager *(NSDictionary *defaultTextAttributes){
        self.pdc_textField.defaultTextAttributes = defaultTextAttributes;
        return self;
    };
}

-(pdc_dictionary )tf_typingAttributes
{
    return ^PDCPropertyManager *(NSDictionary *typingAttributes){
        self.pdc_textField.typingAttributes = typingAttributes;
        return self;
    };
}

-(pdc_bool )tf_clearsOnBeginEditing
{
    return ^PDCPropertyManager *(BOOL clearsOnBeginEditing){
        self.pdc_textField.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}

-(pdc_bool )tf_adjustsFontSizeToFitWidth
{
    return ^PDCPropertyManager *(BOOL adjustsFontSizeToFitWidth){
        self.pdc_textField.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}

-(pdc_bool )tf_allowsEditingTextAttributes
{
    return ^PDCPropertyManager *(BOOL allowsEditingTextAttributes){
        self.pdc_textField.allowsEditingTextAttributes = allowsEditingTextAttributes;
        return self;
    };
}

-(pdc_float )tf_minimumFontSize
{
    return ^PDCPropertyManager *(CGFloat minimumFontSize){
        self.pdc_textField.minimumFontSize = minimumFontSize;
        return self;
    };
}

-(pdc_image )tf_background
{
    return ^PDCPropertyManager *(UIImage *background){
        self.pdc_textField.background = background;
        return self;
    };
}

-(pdc_image )tf_disabledBackground
{
    return ^PDCPropertyManager *(UIImage *disabledBackground){
        self.pdc_textField.disabledBackground = disabledBackground;
        return self;
    };
}

-(pdc_textFieldViewMode )tf_clearButtonMode
{
    return ^PDCPropertyManager *(UITextFieldViewMode clearButtonMode){
        self.pdc_textField.clearButtonMode = clearButtonMode;
        return self;
    };
}

-(pdc_textFieldViewMode )tf_leftViewMode
{
    return ^PDCPropertyManager *(UITextFieldViewMode leftViewMode){
        self.pdc_textField.leftViewMode = leftViewMode;
        return self;
    };
}

-(pdc_textFieldViewMode )tf_rightViewMode
{
    return ^PDCPropertyManager *(UITextFieldViewMode rightViewMode){
        self.pdc_textField.rightViewMode = rightViewMode;
        return self;
    };
}

-(pdc_view )tf_leftView
{
    return ^PDCPropertyManager *(UIView *leftView){
        self.pdc_textField.leftView = leftView;
        return self;
    };
}

-(pdc_view )tf_rightView
{
    return ^PDCPropertyManager *(UIView *rightView){
        self.pdc_textField.rightView = rightView;
        return self;
    };
}

-(pdc_view )tf_inputView
{
    return ^PDCPropertyManager *(UIView *inputView){
        self.pdc_textField.inputView = inputView;
        return self;
    };
}

-(pdc_view )tf_inputAccessoryView
{
    return ^PDCPropertyManager *(UIView *inputAccessoryView){
        self.pdc_textField.inputAccessoryView = inputAccessoryView;
        return self;
    };
}
@end
