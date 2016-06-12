//
//  PDCPropertyManager+UISlider.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+UISlider.h"

@implementation PDCPropertyManager (UISlider)

-(pdc_float )sld_value
{
    return ^PDCPropertyManager *(CGFloat value){
        self.pdc_slider.value = value;
        return self;
    };
}

-(pdc_float )sld_minimumValue
{
    return ^PDCPropertyManager *(CGFloat minimumValue){
        self.pdc_slider.minimumValue = minimumValue;
        return self;
    };
}

-(pdc_float )sld_maximumValue
{
    return ^PDCPropertyManager *(CGFloat maximumValue){
        self.pdc_slider.maximumValue = maximumValue;
        return self;
    };
}

-(pdc_float_bool )sld_value_animated
{
    return ^PDCPropertyManager *(CGFloat value,BOOL animated){
        [self.pdc_slider setValue:value animated:animated];
        return self;
    };
}

-(pdc_image_state )sld_thumbImage_state
{
    return ^PDCPropertyManager *(UIImage *image,UIControlState state){
        [self.pdc_slider setThumbImage:image forState:state];
        return self;
    };
}

-(pdc_image_state )sld_minimumTrackImage_state
{
    return ^PDCPropertyManager *(UIImage *image,UIControlState state){
        [self.pdc_slider setMinimumTrackImage:image forState:state];
        return self;
    };
}

-(pdc_image_state )sld_maximumTrackImage_state
{
    return ^PDCPropertyManager *(UIImage *image,UIControlState state){
        [self.pdc_slider setMaximumTrackImage:image forState:state];
        return self;
    };
}

-(pdc_image )sld_minimumValueImage
{
    return ^PDCPropertyManager *(UIImage *minimumValueImage){
        self.pdc_slider.minimumValueImage = minimumValueImage;
        return self;
    };
}

-(pdc_image )sld_maximumValueImage
{
    return ^PDCPropertyManager *(UIImage *maximumValueImage){
        self.pdc_slider.minimumValueImage = maximumValueImage;
        return self;
    };
}

-(pdc_color )sld_minimumTrackTintColor
{
    return ^PDCPropertyManager *(UIColor *minimumTrackTintColor){
        self.pdc_slider.minimumTrackTintColor = minimumTrackTintColor;
        return self;
    };
}

-(pdc_color )sld_maximumTrackTintColor
{
    return ^PDCPropertyManager *(UIColor *maximumTrackTintColor){
        self.pdc_slider.maximumTrackTintColor = maximumTrackTintColor;
        return self;
    };
}

-(pdc_color )sld_thumbTintColor
{
    return ^PDCPropertyManager *(UIColor *thumbTintColor){
        self.pdc_slider.thumbTintColor = thumbTintColor;
        return self;
    };
}
@end
