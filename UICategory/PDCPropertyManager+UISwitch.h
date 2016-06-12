//
//  PDCPropertyManager+UISwitch.h
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

@interface PDCPropertyManager (UISwitch)
//@property (strong, nonatomic) UISwitch *swh;

@property (nonatomic, readonly, copy) pdc_color swh_onTintColor;

@property (nonatomic, readonly, copy) pdc_color swh_tintColor;

@property (nonatomic, readonly, copy) pdc_color swh_thumbTintColor;

@property (nonatomic, readonly, copy) pdc_image swh_onImage;

@property (nonatomic, readonly, copy) pdc_image swh_offImage;

@property (nonatomic, readonly, copy) pdc_bool swh_on;

@property (nonatomic, readonly, copy) pdc_bool_bool swh_on_animated;
@end
