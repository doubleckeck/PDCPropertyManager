//
//  PDCPropertyManager+UILabel.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+UILabel.h"

@implementation PDCPropertyManager (UILabel)
#pragma mark - label
-(pdc_string )lb_text
{
    return ^PDCPropertyManager *(NSString *text){
        self.pdc_label.text = text;
        return self;
    };
}
@end
