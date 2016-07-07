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
-( __kindof UIView *)tempView
{
    if (!_tempView)
    {
        if ([self.main isKindOfClass:[UIView class]])
        {
            _tempView = self.main;
        }
    }
    return _tempView;
}

-( __kindof UIControl *)tempControl
{
    if (!_tempControl)
    {
        if ([self.main isKindOfClass:[UIControl class]])
        {
            _tempControl = self.main;
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
            self.tempView.bounds = bounds;
        });
        return self;
    };
}

-(pdc_point )center
{
    return ^PDCPropertyManager *(CGPoint center){
        dispatch_async(dispatch_get_main_queue(), ^{
            self.tempView.center = center;
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

-(pdc_ct_action )removeAction
{
    return ^PDCPropertyManager *(id target,SEL sel,UIControlEvents controlEvents){
        [self.tempControl removeTarget:target action:sel forControlEvents:controlEvents];
        return self;
    };
}
@end
