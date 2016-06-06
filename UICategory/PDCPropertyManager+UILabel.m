//
//  PDCPropertyManager+UILabel.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+UILabel.h"

@implementation PDCPropertyManager (UILabel)
#pragma mark - label
-(pdc_string )lb_text
{
    return ^PDCPropertyManager *(NSString *text){
        self.pdc_label.text = text;
        return self;
    };
}

-(pdc_font )lb_font
{
    return ^PDCPropertyManager *(UIFont *font){
        self.pdc_label.font = font;
        return self;
    };
}

-(pdc_bool )lb_highlighted
{
    return ^PDCPropertyManager *(BOOL highlighted){
        self.pdc_label.highlighted = highlighted;
        return self;
    };
}

-(pdc_bool )lb_userInteractionEnabled
{
    return ^PDCPropertyManager *(BOOL userInteractionEnabled){
        self.pdc_label.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

-(pdc_bool )lb_enabled
{
    return ^PDCPropertyManager *(BOOL enabled){
        self.pdc_label.enabled = enabled;
        return self;
    };
}

-(pdc_bool )lb_adjustsFontSizeToFitWidth
{
    return ^PDCPropertyManager *(BOOL adjustsFontSizeToFitWidth){
        self.pdc_label.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}

-(pdc_bool )lb_allowsDefaultTighteningForTruncation
{
    return ^PDCPropertyManager *(BOOL allowsDefaultTighteningForTruncation){
        self.pdc_label.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation;
        return self;
    };
}

-(pdc_color )lb_textColor
{
    return ^PDCPropertyManager *(UIColor *textColor){
        self.pdc_label.textColor = textColor;
        return self;
    };
}

-(pdc_color )lb_shadowColor
{
    return ^PDCPropertyManager *(UIColor *shadowColor){
        self.pdc_label.shadowColor = shadowColor;
        return self;
    };
}

-(pdc_color )lb_highlightedTextColor
{
    return ^PDCPropertyManager *(UIColor *highlightedTextColor){
        self.pdc_label.highlightedTextColor = highlightedTextColor;
        return self;
    };
}

-(pdc_size )lb_shadowOffset
{
    return ^PDCPropertyManager *(CGSize shadowOffset){
        self.pdc_label.shadowOffset = shadowOffset;
        return self;
    };
}

-(pdc_textAlignment )lb_textAlignment
{
    return ^PDCPropertyManager *(NSTextAlignment textAlignment){
        self.pdc_label.textAlignment = textAlignment;
        return self;
    };
}

-(pdc_lineBreakMode )lb_lineBreakMode
{
    return ^PDCPropertyManager *(NSLineBreakMode lineBreakMode){
        self.pdc_label.lineBreakMode = lineBreakMode;
        return self;
    };
}

-(pdc_attributedString )lb_attributedText
{
    return ^PDCPropertyManager *(NSAttributedString *attributedText){
        self.pdc_label.attributedText = attributedText;
        return self;
    };
}

-(pdc_integer )lb_numberOfLines
{
    return ^PDCPropertyManager *(NSInteger numberOfLines){
        self.pdc_label.numberOfLines = numberOfLines;
        return self;
    };
}

-(pdc_baselineAdjustment )lb_baselineAdjustment
{
    return ^PDCPropertyManager *(UIBaselineAdjustment baselineAdjustment){
        self.pdc_label.baselineAdjustment = baselineAdjustment;
        return self;
    };
}

-(pdc_float )lb_minimumScaleFactor
{
    return ^PDCPropertyManager *(CGFloat minimumScaleFactor){
        self.pdc_label.minimumScaleFactor = minimumScaleFactor;
        return self;
    };
}

-(pdc_float )lb_preferredMaxLayoutWidth
{
    return ^PDCPropertyManager *(CGFloat preferredMaxLayoutWidth){
        self.pdc_label.preferredMaxLayoutWidth = preferredMaxLayoutWidth;
        return self;
    };
}
@end
