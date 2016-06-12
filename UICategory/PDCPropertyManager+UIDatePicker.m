//
//  PDCPropertyManager+UIDatePicker.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+UIDatePicker.h"

@implementation PDCPropertyManager (UIDatePicker)

-(pdc_dp_datePickerMode )dp_datePickerMode
{
    return ^PDCPropertyManager *(UIDatePickerMode datePickerMode){
        self.pdc_datePicker.datePickerMode = datePickerMode;
        return self;
    };
}

-(pdc_locale )dp_locale
{
    return ^PDCPropertyManager *(NSLocale *locale){
        self.pdc_datePicker.locale = locale;
        return self;
    };
}

-(pdc_calendar )dp_calendar
{
    return ^PDCPropertyManager *(NSCalendar *calendar){
        self.pdc_datePicker.calendar = calendar;
        return self;
    };
}

-(pdc_timeZone )dp_timeZone
{
    return ^PDCPropertyManager *(NSTimeZone *timeZone){
        self.pdc_datePicker.timeZone = timeZone;
        return self;
    };
}

-(pdc_date )dp_date
{
    return ^PDCPropertyManager *(NSDate *date){
        self.pdc_datePicker.date = date;
        return self;
    };
}

-(pdc_date )dp_minimumDate
{
    return ^PDCPropertyManager *(NSDate *minimumDate){
        self.pdc_datePicker.minimumDate = minimumDate;
        return self;
    };
}

-(pdc_date )dp_maximumDate
{
    return ^PDCPropertyManager *(NSDate *maximumDate){
        self.pdc_datePicker.maximumDate = maximumDate;
        return self;
    };
}

-(pdc_timeInterval )dp_countDownDuration
{
    return ^PDCPropertyManager *(NSTimeInterval countDownDuration){
        self.pdc_datePicker.countDownDuration = countDownDuration;
        return self;
    };
}

-(pdc_integer )dp_minuteInterval
{
    return ^PDCPropertyManager *(NSInteger minuteInterval){
        self.pdc_datePicker.minuteInterval = minuteInterval;
        return self;
    };
}

-(pdc_dp_date_animated )dp_date_animated
{
    return ^PDCPropertyManager *(NSDate *date,BOOL animated){
        [self.pdc_datePicker setDate:date animated:animated];
        return self;
    };
}
@end
