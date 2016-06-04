//
//  PDCPropertyManager.m
//  UICategory
//
//  Created by KH on 16/6/4.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

@interface PDCPropertyManager()
@property (nonatomic, weak) UIView *temp;   //temp View,use to set view
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

-(pdc_bool )userInteractionEnabled
{
    __block typeof(self) weakself = self;
    _userInteractionEnabled = ^PDCPropertyManager *(BOOL userInteractionEnabled){
        weakself.temp.userInteractionEnabled = userInteractionEnabled;
        return weakself;
    };
    return _userInteractionEnabled;
}

#pragma mark - button

-(pdc_bt_text )bt_title
{
    __block typeof(self) weakself = self;
    _bt_title = ^PDCPropertyManager *(NSString *title,UIControlState controlState){
        [weakself.pdc_button setTitle:title forState:controlState];
        return weakself;
    };
    return _bt_title;
}

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
