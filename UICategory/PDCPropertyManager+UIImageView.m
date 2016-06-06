//
//  PDCPropertyManager+UIImageView.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+UIImageView.h"

@implementation PDCPropertyManager (UIImageView)
-(pdc_image )iv_image
{
    return ^PDCPropertyManager *(UIImage *image){
        self.pdc_imageView.image = image;
        return self;
    };
}
@end
