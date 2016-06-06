//
//  PDCPropertyManager.m
//  UICategory
//
//  Created by KH on 16/6/4.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

@interface PDCPropertyManager()
@property (nonatomic, weak) __kindof UIView *tempView;   //temp View,use to set view

@property (nonatomic, weak) __kindof UIControl *tempControl;   //temp control,use to set control sub class


@end

@implementation PDCPropertyManager
-(UIView *)tempView
{
    if (!_tempView)
    {
        //view
        if (self.pdc_view)
        {
            _tempView = self.pdc_view;
        }
        //label
        else if (self.pdc_label)
        {
            _tempView = self.pdc_label;
        }
        //button
        else if (self.pdc_button)
        {
            _tempView = self.pdc_button;
        }
        //textField
        else if (self.pdc_textField)
        {
            _tempView = self.pdc_textField;
        }
    }
    return _tempView;
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
    return ^PDCPropertyManager *(CGFloat x){
        dispatch_async(dispatch_get_main_queue(), ^{
            CGRect frame = self.tempView.frame;
            frame.origin.x = x;
            self.tempView.frame = frame;
        });
        return self;
    };
}

-(pdc_float )y
{
    return ^PDCPropertyManager *(CGFloat y){
        dispatch_async(dispatch_get_main_queue(), ^{
            CGRect frame = self.tempView.frame;
            frame.origin.y = y;
            self.tempView.frame = frame;
        });
        return self;
    };
}

-(pdc_float )width
{
    return ^PDCPropertyManager *(CGFloat width){
        dispatch_async(dispatch_get_main_queue(), ^{
            CGRect frame = self.tempView.frame;
            frame.size.width = width;
            self.tempView.frame = frame;
        });
        return self;
    };
}

-(pdc_float )height
{
    return ^PDCPropertyManager *(CGFloat height){
        dispatch_async(dispatch_get_main_queue(), ^{
            CGRect frame = self.tempView.frame;
            frame.size.height = height;
            self.tempView.frame = frame;
        });
        return self;
    };
}

-(pdc_rect )frame
{
    return ^PDCPropertyManager *(CGRect frame){
        dispatch_async(dispatch_get_main_queue(), ^{
            self.tempView.frame = frame;
        });
        return self;
    };
}

-(pdc_rect )bounds
{
    return ^PDCPropertyManager *(CGRect bounds){
        dispatch_async(dispatch_get_main_queue(), ^{
            self.pdc_view.bounds = bounds;
        });
        return self;
    };
}

-(pdc_point )center
{
    return ^PDCPropertyManager *(CGPoint center){
        dispatch_async(dispatch_get_main_queue(), ^{
            self.pdc_view.center = center;
        });
        return self;
    };
}

-(pdc_transform )transform
{
    return ^PDCPropertyManager *(CGAffineTransform transform){
        dispatch_async(dispatch_get_main_queue(), ^{
            self.tempView.transform = transform;
        });
        return self;
    };
}

#pragma mark - view normal
-(pdc_integer )tag
{
    return ^PDCPropertyManager *(NSInteger tag){
        self.tempView.tag = tag;
        return self;
    };
}

-(pdc_color )backgroundColor
{
    return ^PDCPropertyManager *(UIColor *color){
        self.tempView.backgroundColor = color;
        return self;
    };
}

-(pdc_bool )clipsToBounds
{
    return ^PDCPropertyManager *(BOOL clipsToBounds){
        self.tempView.clipsToBounds = clipsToBounds;
        return self;
    };
}


-(pdc_bool )hidden
{
    return ^PDCPropertyManager *(BOOL hidden){
        self.tempView.hidden = hidden;
        return self;
    };
}

-(pdc_bool )opaque
{
    return ^PDCPropertyManager *(BOOL opaque){
        self.tempView.opaque = opaque;
        return self;
    };
}

-(pdc_bool )clearsContextBeforeDrawing
{
    return ^PDCPropertyManager *(BOOL clearsContextBeforeDrawing){
        self.tempView.clearsContextBeforeDrawing = clearsContextBeforeDrawing;
        return self;
    };
}

-(pdc_float )alpha
{
    return ^PDCPropertyManager *(CGFloat alpha){
        self.tempView.alpha = alpha;
        return self;
    };
}

-(pdc_color )tintColor
{
    return ^PDCPropertyManager *(UIColor *tintColor){
        self.tempView.tintColor = tintColor;
        return self;
    };
}

-(pdc_tintAdjustmentMode )tintAdjustmentMode
{
    return ^PDCPropertyManager *(UIViewTintAdjustmentMode tintAdjustmentMode){
        self.tempView.tintAdjustmentMode = tintAdjustmentMode;
        return self;
    };
}

-(pdc_bool )userInteractionEnabled
{
    return ^PDCPropertyManager *(BOOL userInteractionEnabled){
        self.tempView.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

-(pdc_view )addSubView
{
    return ^PDCPropertyManager *(UIView *subView){
        [self.tempView addSubview:subView];
        return self;
    };
}

-(pdc_edgeInsets )layoutMargins
{
    return ^PDCPropertyManager *(UIEdgeInsets layoutMargins){
        self.tempView.layoutMargins = layoutMargins;
        return self;
    };
}

#pragma mark - UIControl
-(pdc_ct_action )action
{
    return ^PDCPropertyManager *(id target,SEL sel,UIControlEvents controlEvents){
        [self.tempControl addTarget:target action:sel forControlEvents:controlEvents];
        return self;
    };
}
@end
