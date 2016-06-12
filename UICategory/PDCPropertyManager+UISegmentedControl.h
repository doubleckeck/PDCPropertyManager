//
//  PDCPropertyManager+UISegmentedControl.h
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

@interface PDCPropertyManager (UISegmentedControl)
//@property (strong, nonatomic) UISegmentedControl *segmentedControl;
/* property */
@property (nonatomic, readonly, copy) pdc_bool seg_momentary;
@property (nonatomic, readonly, copy) pdc_bool seg_apportionsSegmentWidthsByContent;
@property (nonatomic, readonly, copy) pdc_integer seg_selectedSegmentIndex;
@property (nonatomic, readonly, copy) pdc_color seg_tintColor;

/* method */
#warning need to do...
@end
