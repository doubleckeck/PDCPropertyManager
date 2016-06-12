//
//  PDCPropertyManager+UIDatePicker.h
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

typedef PDCPropertyManager *(^pdc_dp_datePickerMode)(UIDatePickerMode );
typedef PDCPropertyManager *(^pdc_dp_date_animated)(NSDate *,BOOL);

@interface PDCPropertyManager (UIDatePicker)
//@property (strong, nonatomic) UIDatePicker *datePicker;

@property (nonatomic, readonly, copy) pdc_dp_datePickerMode dp_datePickerMode;

@property (nonatomic, readonly, copy) pdc_locale dp_locale;
@property (nonatomic, readonly, copy) pdc_calendar dp_calendar;
@property (nonatomic, readonly, copy) pdc_timeZone dp_timeZone;
@property (nonatomic, readonly, copy) pdc_date dp_date;
@property (nonatomic, readonly, copy) pdc_date dp_minimumDate;
@property (nonatomic, readonly, copy) pdc_date dp_maximumDate;

@property (nonatomic, readonly, copy) pdc_timeInterval dp_countDownDuration;

@property (nonatomic, readonly, copy) pdc_integer dp_minuteInterval;

@property (nonatomic, readonly, copy) pdc_dp_date_animated dp_date_animated;
@end
