//
//  PDCPropertyManager+UIButton.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+UIButton.h"

@implementation PDCPropertyManager (UIButton)
/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
#pragma mark - button
-(pdc_edgeInsets )bt_contentEdgeInsets
{
    return ^PDCPropertyManager *(UIEdgeInsets contentEdgeInsets){
        self.pdc_button.contentEdgeInsets = contentEdgeInsets;
        return self;
    };
}

-(pdc_edgeInsets )bt_titleEdgeInsets
{
    return ^PDCPropertyManager *(UIEdgeInsets titleEdgeInsets){
        self.pdc_button.titleEdgeInsets = titleEdgeInsets;
        return self;
    };
}

-(pdc_edgeInsets )bt_imageEdgeInsets
{
    return ^PDCPropertyManager *(UIEdgeInsets imageEdgeInsets){
        self.pdc_button.imageEdgeInsets = imageEdgeInsets;
        return self;
    };
}

-(pdc_bool )bt_reversesTitleShadowWhenHighlighted
{
    return ^PDCPropertyManager *(BOOL reversesTitleShadowWhenHighlighted){
        self.pdc_button.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted;
        return self;
    };
}

-(pdc_bool )bt_adjustsImageWhenHighlighted
{
    return ^PDCPropertyManager *(BOOL adjustsImageWhenHighlighted){
        self.pdc_button.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted;
        return self;
    };
}

-(pdc_bool )bt_adjustsImageWhenDisabled
{
    return ^PDCPropertyManager *(BOOL adjustsImageWhenDisabled){
        self.pdc_button.adjustsImageWhenDisabled = adjustsImageWhenDisabled;
        return self;
    };
}

-(pdc_bool )bt_showsTouchWhenHighlighted
{
    return ^PDCPropertyManager *(BOOL showsTouchWhenHighlighted){
        self.pdc_button.showsTouchWhenHighlighted = showsTouchWhenHighlighted;
        return self;
    };
}

-(pdc_bt_text )bt_title
{
    return ^PDCPropertyManager *(NSString *title,UIControlState controlState){
        [self.pdc_button setTitle:title forState:controlState];
        return self;
    };
}

-(pdc_string )bt_titleLabel
{
    return ^PDCPropertyManager *(NSString *title){
        self.pdc_button.titleLabel.text = title;
        return self;
    };
}

-(pdc_bt_color )bt_titleColor
{
    return ^PDCPropertyManager *(UIColor *color,UIControlState controlState){
        [self.pdc_button setTitleColor:color forState:controlState];
        return self;
    };
}

-(pdc_bt_color )bt_titleShadowColor
{
    return ^PDCPropertyManager *(UIColor *color,UIControlState controlState){
        [self.pdc_button setTitleShadowColor:color forState:controlState];
        return self;
    };
}

-(pdc_bt_image )bt_image
{
    return ^PDCPropertyManager *(UIImage *image,UIControlState controlState){
        [self.pdc_button setImage:image forState:controlState];
        return self;
    };
}

-(pdc_bt_image )bt_backgroundImage
{
    return ^PDCPropertyManager *(UIImage *image,UIControlState controlState){
        [self.pdc_button setBackgroundImage:image forState:controlState];
        return self;
    };
}

-(pdc_bt_attributedString )bt_attributedTitle
{
    return ^PDCPropertyManager *(NSAttributedString *title,UIControlState controlState){
        [self.pdc_button setAttributedTitle:title forState:controlState];
        return self;
    };

}

@end
