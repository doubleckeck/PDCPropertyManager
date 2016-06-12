//
//  PDCPropertyManager+UISwitch.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+UISwitch.h"

@implementation PDCPropertyManager (UISwitch)

-(pdc_color )swh_onTintColor
{
    return ^PDCPropertyManager *(UIColor *onTintColor){
        self.pdc_switch.onTintColor = onTintColor;
        return self;
    };
}

-(pdc_color )swh_tintColor
{
    return ^PDCPropertyManager *(UIColor *tintColor){
        self.pdc_switch.tintColor = tintColor;
        return self;
    };
}

-(pdc_color )swh_thumbTintColor
{
    return ^PDCPropertyManager *(UIColor *thumbTintColor){
        self.pdc_switch.thumbTintColor = thumbTintColor;
        return self;
    };
}

-(pdc_image )swh_onImage
{
    return ^PDCPropertyManager *(UIImage *onImage){
        self.pdc_switch.onImage = onImage;
        return self;
    };
}

-(pdc_image )swh_offImage
{
    return ^PDCPropertyManager *(UIImage *offImage){
        self.pdc_switch.offImage = offImage;
        return self;
    };
}

-(pdc_bool )swh_on
{
    return ^PDCPropertyManager *(BOOL on){
        self.pdc_switch.on = on;
        return self;
    };
}

-(pdc_bool_bool )swh_on_animated
{
    return ^PDCPropertyManager *(BOOL on,BOOL animated){
        [self.pdc_switch setOn:on animated:animated];
        return self;
    };
}

@end
