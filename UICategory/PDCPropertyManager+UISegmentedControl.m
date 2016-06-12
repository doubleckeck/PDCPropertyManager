//
//  PDCPropertyManager+UISegmentedControl.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+UISegmentedControl.h"

@implementation PDCPropertyManager (UISegmentedControl)

-(pdc_bool )seg_momentary
{
    return ^PDCPropertyManager *(BOOL momentary){
        self.pdc_segmentedControl.momentary = momentary;
        return self;
    };
}

-(pdc_bool )seg_apportionsSegmentWidthsByContent
{
    return ^PDCPropertyManager *(BOOL apportionsSegmentWidthsByContent){
        self.pdc_segmentedControl.apportionsSegmentWidthsByContent = apportionsSegmentWidthsByContent;
        return self;
    };
}

-(pdc_integer )seg_selectedSegmentIndex
{
    return ^PDCPropertyManager *(NSInteger selectedSegmentIndex){
        self.pdc_segmentedControl.selectedSegmentIndex = selectedSegmentIndex;
        return self;
    };
}

-(pdc_color )seg_tintColor
{
    return ^PDCPropertyManager *(UIColor *tintColor){
        self.pdc_segmentedControl.tintColor = tintColor;
        return self;
    };
}
@end
