//
//  PDCPropertyManager+UISlider.h
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

@interface PDCPropertyManager (UISlider)
//@property (strong, nonatomic) UISlider *slider;

@property (nonatomic, readonly, copy) pdc_float sld_value;
@property (nonatomic, readonly, copy) pdc_float sld_minimumValue;
@property (nonatomic, readonly, copy) pdc_float sld_maximumValue;
@property (nonatomic, readonly, copy) pdc_float_bool sld_value_animated;

@property (nonatomic, readonly, copy) pdc_image_state sld_thumbImage_state;
@property (nonatomic, readonly, copy) pdc_image_state sld_minimumTrackImage_state;
@property (nonatomic, readonly, copy) pdc_image_state sld_maximumTrackImage_state;

@property (nonatomic, readonly, copy) pdc_image sld_minimumValueImage;
@property (nonatomic, readonly, copy) pdc_image sld_maximumValueImage;

@property (nonatomic, readonly, copy) pdc_color sld_minimumTrackTintColor;
@property (nonatomic, readonly, copy) pdc_color sld_maximumTrackTintColor;
@property (nonatomic, readonly, copy) pdc_color sld_thumbTintColor;

@end
