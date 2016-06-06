//
//  PDCPropertyManager.m
//  UICategory
//
//  Created by KH on 16/6/4.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

@interface PDCPropertyManager()
@property (nonatomic, weak) __kindof UIView *temp;   //temp View,use to set view

@property (nonatomic, weak) __kindof UIControl *tempControl;   //temp control,use to set control sub class
@end

@implementation PDCPropertyManager
-(UIView *)temp
{
    if (!_temp)
    {
        //view
        if (self.pdc_view)
        {
            _temp = self.pdc_view;
        }
        //label
        else if (self.pdc_label)
        {
            _temp = self.pdc_label;
        }
        //button
        else if (self.pdc_button)
        {
            _temp = self.pdc_button;
        }
        //textField
        else if (self.pdc_textField)
        {
            _temp = self.pdc_textField;
        }
    }
    return _temp;
}

-(UIControl *)tempControl
{
    if (!_tempControl)
    {
        if (self.pdc_button)
        {
            _tempControl = self.pdc_button;
        }
        else if (self.pdc_textField)
        {
            _tempControl = self.pdc_textField;
        }
    }
    return _tempControl;
}
/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
#pragma mark - view geo
-(pdc_float )x
{
    __block typeof(self) weakself = self;
    _x = ^PDCPropertyManager *(CGFloat x){
        dispatch_async(dispatch_get_main_queue(), ^{
            CGRect frame = weakself.temp.frame;
            frame.origin.x = x;
            weakself.temp.frame = frame;
        });
        return weakself;
    };
    return _x;
}

-(pdc_float )y
{
    __block typeof(self) weakself = self;
    _y = ^PDCPropertyManager *(CGFloat y){
        dispatch_async(dispatch_get_main_queue(), ^{
            CGRect frame = weakself.temp.frame;
            frame.origin.y = y;
            weakself.temp.frame = frame;
        });
        return weakself;
    };
    return _y;
}

-(pdc_float )width
{
    __block typeof(self) weakself = self;
    _width = ^PDCPropertyManager *(CGFloat width){
        dispatch_async(dispatch_get_main_queue(), ^{
            CGRect frame = weakself.temp.frame;
            frame.size.width = width;
            weakself.temp.frame = frame;
        });
        return weakself;
    };
    return _width;
}


-(pdc_float )height
{
    __block typeof(self) weakself = self;
    _height = ^PDCPropertyManager *(CGFloat height){
        dispatch_async(dispatch_get_main_queue(), ^{
            CGRect frame = weakself.temp.frame;
            frame.size.height = height;
            weakself.temp.frame = frame;
        });
        return weakself;
    };
    return _height;
}

-(pdc_rect )frame
{
    __block typeof(self) weakself = self;
    _frame = ^PDCPropertyManager *(CGRect frame){
        dispatch_async(dispatch_get_main_queue(), ^{
            weakself.temp.frame = frame;
        });
        return weakself;
    };
    return _frame;
}

-(pdc_rect )bounds
{
    __block typeof(self) weakself = self;
    _bounds = ^PDCPropertyManager *(CGRect bounds){
        dispatch_async(dispatch_get_main_queue(), ^{
            weakself.pdc_view.bounds = bounds;
        });
        return weakself;
    };
    return _bounds;
}

-(pdc_point )center
{
    __block typeof(self) weakself = self;
    _center = ^PDCPropertyManager *(CGPoint center){
        dispatch_async(dispatch_get_main_queue(), ^{
            weakself.pdc_view.center = center;
        });
        return weakself;
    };
    return _center;
}

-(pdc_transform )transform
{
    __block typeof(self) weakself = self;
    _transform = ^PDCPropertyManager *(CGAffineTransform transform){
        dispatch_async(dispatch_get_main_queue(), ^{
            weakself.temp.transform = transform;
        });
        return weakself;
    };
    return _transform;
}

#pragma mark - view normal
-(pdc_integer )tag
{
    __block typeof(self) weakself = self;
    _tag = ^PDCPropertyManager *(NSInteger tag){
        weakself.temp.tag = tag;
        return weakself;
    };
    return _tag;
}

-(pdc_color )backgroundColor
{
    __block typeof(self) weakself = self;
    _backgroundColor = ^PDCPropertyManager *(UIColor *color){
        weakself.temp.backgroundColor = color;
        return weakself;
    };
    return _backgroundColor;
}

-(pdc_bool )clipsToBounds
{
    __block typeof(self) weakself = self;
    _clipsToBounds = ^PDCPropertyManager *(BOOL clipsToBounds){
        weakself.temp.clipsToBounds = clipsToBounds;
        return weakself;
    };
    return _clipsToBounds;
}


-(pdc_bool )hidden
{
    __block typeof(self) weakself = self;
    _hidden = ^PDCPropertyManager *(BOOL hidden){
        weakself.temp.hidden = hidden;
        return weakself;
    };
    return _hidden;
}

-(pdc_bool )opaque
{
    __block typeof(self) weakself = self;
    _opaque = ^PDCPropertyManager *(BOOL opaque){
        weakself.temp.opaque = opaque;
        return weakself;
    };
    return _opaque;
}

-(pdc_bool )clearsContextBeforeDrawing
{
    __block typeof(self) weakself = self;
    _clearsContextBeforeDrawing = ^PDCPropertyManager *(BOOL clearsContextBeforeDrawing){
        weakself.temp.clearsContextBeforeDrawing = clearsContextBeforeDrawing;
        return weakself;
    };
    return _clearsContextBeforeDrawing;
}

-(pdc_float )alpha
{
    __block typeof(self) weakself = self;
    _alpha = ^PDCPropertyManager *(CGFloat alpha){
        weakself.temp.alpha = alpha;
        return weakself;
    };
    return _alpha;
}

-(pdc_color )tintColor
{
    __block typeof(self) weakself = self;
    _tintColor = ^PDCPropertyManager *(UIColor *tintColor){
        weakself.temp.tintColor = tintColor;
        return weakself;
    };
    return _tintColor;
}

-(pdc_tintAdjustmentMode )tintAdjustmentMode
{
    __block typeof(self) weakself = self;
    _tintAdjustmentMode = ^PDCPropertyManager *(UIViewTintAdjustmentMode tintAdjustmentMode){
        weakself.temp.tintAdjustmentMode = tintAdjustmentMode;
        return weakself;
    };
    return _tintAdjustmentMode;
}

-(pdc_bool )userInteractionEnabled
{
    __block typeof(self) weakself = self;
    _userInteractionEnabled = ^PDCPropertyManager *(BOOL userInteractionEnabled){
        weakself.temp.userInteractionEnabled = userInteractionEnabled;
        return weakself;
    };
    return _userInteractionEnabled;
}

-(pdc_view )addSubView
{
    __block typeof(self) weakself = self;
    _addSubView = ^PDCPropertyManager *(UIView *subView){
        [weakself.temp addSubview:subView];
        return weakself;
    };
    return _addSubView;
}

-(pdc_edgeInsets )layoutMargins
{
    __block typeof(self) weakself = self;
    _layoutMargins = ^PDCPropertyManager *(UIEdgeInsets layoutMargins){
        weakself.temp.layoutMargins = layoutMargins;
        return weakself;
    };
    return _layoutMargins;
}



/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
#pragma mark - button
-(pdc_edgeInsets )bt_contentEdgeInsets
{
    __block typeof(self) weakself = self;
    _bt_contentEdgeInsets = ^PDCPropertyManager *(UIEdgeInsets contentEdgeInsets){
        weakself.pdc_button.contentEdgeInsets = contentEdgeInsets;
        return weakself;
    };
    return _bt_contentEdgeInsets;
}

-(pdc_edgeInsets )bt_titleEdgeInsets
{
    __block typeof(self) weakself = self;
    _bt_titleEdgeInsets = ^PDCPropertyManager *(UIEdgeInsets titleEdgeInsets){
        weakself.pdc_button.titleEdgeInsets = titleEdgeInsets;
        return weakself;
    };
    return _bt_titleEdgeInsets;
}

-(pdc_edgeInsets )bt_imageEdgeInsets
{
    __block typeof(self) weakself = self;
    _bt_imageEdgeInsets = ^PDCPropertyManager *(UIEdgeInsets imageEdgeInsets){
        weakself.pdc_button.imageEdgeInsets = imageEdgeInsets;
        return weakself;
    };
    return _bt_imageEdgeInsets;
}

-(pdc_bool )bt_reversesTitleShadowWhenHighlighted
{
    __block typeof(self) weakself = self;
    _bt_reversesTitleShadowWhenHighlighted = ^PDCPropertyManager *(BOOL reversesTitleShadowWhenHighlighted){
        weakself.pdc_button.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted;
        return weakself;
    };
    return _bt_reversesTitleShadowWhenHighlighted;
}

-(pdc_bool )bt_adjustsImageWhenHighlighted
{
    __block typeof(self) weakself = self;
    _bt_adjustsImageWhenHighlighted = ^PDCPropertyManager *(BOOL adjustsImageWhenHighlighted){
        weakself.pdc_button.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted;
        return weakself;
    };
    return _bt_adjustsImageWhenHighlighted;
}

-(pdc_bool )bt_adjustsImageWhenDisabled
{
    __block typeof(self) weakself = self;
    _bt_adjustsImageWhenDisabled = ^PDCPropertyManager *(BOOL adjustsImageWhenDisabled){
        weakself.pdc_button.adjustsImageWhenDisabled = adjustsImageWhenDisabled;
        return weakself;
    };
    return _bt_adjustsImageWhenDisabled;
}

-(pdc_bool )bt_showsTouchWhenHighlighted
{
    __block typeof(self) weakself = self;
    _bt_showsTouchWhenHighlighted = ^PDCPropertyManager *(BOOL showsTouchWhenHighlighted){
        weakself.pdc_button.showsTouchWhenHighlighted = showsTouchWhenHighlighted;
        return weakself;
    };
    return _bt_showsTouchWhenHighlighted;
}

-(pdc_bt_text )bt_title
{
    __block typeof(self) weakself = self;
    _bt_title = ^PDCPropertyManager *(NSString *title,UIControlState controlState){
        [weakself.pdc_button setTitle:title forState:controlState];
        return weakself;
    };
    return _bt_title;
}

-(pdc_string )bt_titleLabel
{
    __block typeof(self) weakself = self;
    _bt_titleLabel = ^PDCPropertyManager *(NSString *title){
        weakself.pdc_button.titleLabel.text = title;
        return weakself;
    };
    return _bt_titleLabel;
}

-(pdc_bt_color )bt_titleColor
{
    __block typeof(self) weakself = self;
    _bt_titleColor = ^PDCPropertyManager *(UIColor *color,UIControlState controlState){
        [weakself.pdc_button setTitleColor:color forState:controlState];
        return weakself;
    };
    return _bt_titleColor;
}

-(pdc_bt_color )bt_titleShadowColor
{
    __block typeof(self) weakself = self;
    _bt_titleShadowColor = ^PDCPropertyManager *(UIColor *color,UIControlState controlState){
        [weakself.pdc_button setTitleShadowColor:color forState:controlState];
        return weakself;
    };
    return _bt_titleShadowColor;
}

-(pdc_bt_image )bt_image
{
    __block typeof(self) weakself = self;
    _bt_image = ^PDCPropertyManager *(UIImage *image,UIControlState controlState){
        [weakself.pdc_button setImage:image forState:controlState];
        return weakself;
    };
    return _bt_image;
}

-(pdc_bt_image )bt_backgroundImage
{
    __block typeof(self) weakself = self;
    _bt_backgroundImage = ^PDCPropertyManager *(UIImage *image,UIControlState controlState){
        [weakself.pdc_button setBackgroundImage:image forState:controlState];
        return weakself;
    };
    return _bt_backgroundImage;
}

-(pdc_bt_attributedString )bt_attributedTitle
{
    __block typeof(self) weakself = self;
    _bt_attributedTitle = ^PDCPropertyManager *(NSAttributedString *title,UIControlState controlState){
        [weakself.pdc_button setAttributedTitle:title forState:controlState];
        return weakself;
    };
    return _bt_attributedTitle;
}

-(pdc_ct_action )action
{
    __block typeof(self) weakself = self;
    _action = ^PDCPropertyManager *(id target,SEL sel,UIControlEvents controlEvents){
        [weakself.tempControl addTarget:target action:sel forControlEvents:controlEvents];
        return weakself;
    };
    return _action;
}

/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
#pragma mark - label
-(pdc_string )lb_text
{
    __block typeof(self) weakself = self;
    _lb_text = ^PDCPropertyManager *(NSString *text){
        weakself.pdc_label.text = text;
        return weakself;
    };
    return _lb_text;
}



#pragma mark - textField
@end
