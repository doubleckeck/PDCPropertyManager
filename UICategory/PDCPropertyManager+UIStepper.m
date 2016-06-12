//
//  PDCPropertyManager+UIStepper.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+UIStepper.h"

@implementation PDCPropertyManager (UIStepper)
-(pdc_bool )stp_continuous
{
    return ^PDCPropertyManager *(BOOL continuous){
        self.pdc_stepper.continuous = continuous;
        return self;
    };
}

-(pdc_bool )stp_autorepeat
{
    return ^PDCPropertyManager *(BOOL autorepeat){
        self.pdc_stepper.autorepeat = autorepeat;
        return self;
    };
}

-(pdc_bool )stp_wraps
{
    return ^PDCPropertyManager *(BOOL wraps){
        self.pdc_stepper.wraps = wraps;
        return self;
    };
}

-(pdc_float )stp_value
{
    return ^PDCPropertyManager *(CGFloat value){
        self.pdc_stepper.value = value;
        return self;
    };
}

-(pdc_float )stp_minimumValue
{
    return ^PDCPropertyManager *(CGFloat minimumValue){
        self.pdc_stepper.minimumValue = minimumValue;
        return self;
    };
}

-(pdc_float )stp_maximumValue
{
    return ^PDCPropertyManager *(CGFloat maximumValue){
        self.pdc_stepper.maximumValue = maximumValue;
        return self;
    };
}

-(pdc_float )stp_stepValue
{
    return ^PDCPropertyManager *(CGFloat stepValue){
        self.pdc_stepper.stepValue = stepValue;
        return self;
    };
}

-(pdc_color )stp_tintColor
{
    return ^PDCPropertyManager *(UIColor *tintColor){
        self.pdc_stepper.tintColor = tintColor;
        return self;
    };
}

-(pdc_image_state )stp_backgroundImage_state
{
    return ^PDCPropertyManager *(UIImage *image,UIControlState state){
        [self.pdc_stepper setBackgroundImage:image forState:state];
        return self;
    };
}

-(pdc_image_state )stp_incrementImage_state
{
    return ^PDCPropertyManager *(UIImage *image,UIControlState state){
        [self.pdc_stepper setIncrementImage:image forState:state];
        return self;
    };
}

-(pdc_image_state )stp_decrementImage_state
{
    return ^PDCPropertyManager *(UIImage *image,UIControlState state){
        [self.pdc_stepper setDecrementImage:image forState:state];
        return self;
    };
}
@end
