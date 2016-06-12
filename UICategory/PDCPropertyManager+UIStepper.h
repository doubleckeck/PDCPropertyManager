//
//  PDCPropertyManager+UIStepper.h
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

@interface PDCPropertyManager (UIStepper)
//@property (strong, nonatomic) UIStepper *stepper;

@property (nonatomic, readonly, copy) pdc_bool stp_continuous;
@property (nonatomic, readonly, copy) pdc_bool stp_autorepeat;
@property (nonatomic, readonly, copy) pdc_bool stp_wraps;

@property (nonatomic, readonly, copy) pdc_float stp_value;
@property (nonatomic, readonly, copy) pdc_float stp_minimumValue;
@property (nonatomic, readonly, copy) pdc_float stp_maximumValue;
@property (nonatomic, readonly, copy) pdc_float stp_stepValue;

@property (nonatomic, readonly, copy) pdc_color stp_tintColor;

@property (nonatomic, readonly, copy) pdc_image_state stp_backgroundImage_state;
@property (nonatomic, readonly, copy) pdc_image_state stp_incrementImage_state;
@property (nonatomic, readonly, copy) pdc_image_state stp_decrementImage_state;

@end
