//
//  PDCPropertyManager+UITextView.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+UITextView.h"

@implementation PDCPropertyManager (UITextView)
-(pdc_tv_delegate )tv_delegate
{
    return ^PDCPropertyManager *(id<UITextViewDelegate> delegate){
        self.pdc_textView.delegate = delegate;
        return self;
    };
}

-(pdc_string )tv_text
{
    return ^PDCPropertyManager *(NSString *text){
        self.pdc_textView.text = text;
        return self;
    };
}

-(pdc_font )tv_font
{
    return ^PDCPropertyManager *(UIFont *font){
        self.pdc_textView.font = font;
        return self;
    };
}

-(pdc_color )tv_textColor
{
    return ^PDCPropertyManager *(UIColor *textColor){
        self.pdc_textView.textColor = textColor;
        return self;
    };
}

-(pdc_textAlignment )tv_textAlignment
{
    return ^PDCPropertyManager *(NSTextAlignment textAlignment){
        self.pdc_textView.textAlignment = textAlignment;
        return self;
    };
}

-(pdc_range )tv_selectedRange
{
    return ^PDCPropertyManager *(NSRange selectedRange){
        self.pdc_textView.selectedRange = selectedRange;
        return self;
    };
}

-(pdc_tv_dataDetectorTypes )tv_dataDetectorTypes
{
    return ^PDCPropertyManager *(UIDataDetectorTypes dataDetectorTypes){
        self.pdc_textView.dataDetectorTypes = dataDetectorTypes;
        return self;
    };
}

-(pdc_bool )tv_editable
{
    return ^PDCPropertyManager *(BOOL editable){
        self.pdc_textView.editable = editable;
        return self;
    };
}

-(pdc_bool )tv_selectable
{
    return ^PDCPropertyManager *(BOOL selectable){
        self.pdc_textView.selectable = selectable;
        return self;
    };
}

-(pdc_bool )tv_allowsEditingTextAttributes
{
    return ^PDCPropertyManager *(BOOL allowsEditingTextAttributes){
        self.pdc_textView.allowsEditingTextAttributes = allowsEditingTextAttributes;
        return self;
    };
}

-(pdc_bool )tv_clearsOnInsertion
{
    return ^PDCPropertyManager *(BOOL clearsOnInsertion){
        self.pdc_textView.clearsOnInsertion = clearsOnInsertion;
        return self;
    };
}

-(pdc_attributedString )tv_attributedText
{
    return ^PDCPropertyManager *(NSAttributedString *attributedText){
        self.pdc_textView.attributedText = attributedText;
        return self;
    };
}

-(pdc_edgeInsets )tv_textContainerInset
{
    return ^PDCPropertyManager *(UIEdgeInsets textContainerInset){
        self.pdc_textView.textContainerInset = textContainerInset;
        return self;
    };
}

-(pdc_dictionary )tv_typingAttributes
{
    return ^PDCPropertyManager *(NSDictionary *typingAttributes){
        self.pdc_textView.typingAttributes = typingAttributes;
        return self;
    };
}

-(pdc_dictionary )tv_linkTextAttributes
{
    return ^PDCPropertyManager *(NSDictionary *linkTextAttributes){
        self.pdc_textView.linkTextAttributes = linkTextAttributes;
        return self;
    };
}

-(pdc_view )tv_inputView
{
    return ^PDCPropertyManager *(UIView *inputView){
        self.pdc_textView.inputView = inputView;
        return self;
    };
}

-(pdc_view )tv_inputAccessoryView
{
    return ^PDCPropertyManager *(UIView *inputAccessoryView){
        self.pdc_textView.inputAccessoryView = inputAccessoryView;
        return self;
    };
}
@end
