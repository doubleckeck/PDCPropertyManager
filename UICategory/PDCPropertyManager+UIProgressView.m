//
//  PDCPropertyManager+UIProgressView.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+UIProgressView.h"

@implementation PDCPropertyManager (UIProgressView)

-(pdc_pro_progressViewStyle )pro_progressViewStyle
{
    return ^PDCPropertyManager *(UIProgressViewStyle progressViewStyle){
        self.pdc_progressView.progressViewStyle = progressViewStyle;
        return self;
    };
}

-(pdc_float )pro_progress
{
    return ^PDCPropertyManager *(CGFloat progress){
        self.pdc_progressView.progress = progress;
        return self;
    };
}

-(pdc_color )pro_progressTintColor
{
    return ^PDCPropertyManager *(UIColor *progressTintColor){
        self.pdc_progressView.progressTintColor = progressTintColor;
        return self;
    };
}

-(pdc_color )pro_trackTintColor
{
    return ^PDCPropertyManager *(UIColor *trackTintColor){
        self.pdc_progressView.trackTintColor = trackTintColor;
        return self;
    };
}

-(pdc_image )pro_progressImage
{
    return ^PDCPropertyManager *(UIImage *progressImage){
        self.pdc_progressView.progressImage = progressImage;
        return self;
    };
}

-(pdc_image )pro_trackImage
{
    return ^PDCPropertyManager *(UIImage *trackImage){
        self.pdc_progressView.trackImage = trackImage;
        return self;
    };
}

-(pdc_float_bool )pro_progress_animated
{
    return ^PDCPropertyManager *(CGFloat progress, BOOL animated){
        [self.pdc_progressView setProgress:progress animated:animated];
        return self;
    };
}

-(pdc_pro_progress )pro_observedProgress
{
    return ^PDCPropertyManager *(NSProgress *observedProgress){
        self.pdc_progressView.observedProgress = observedProgress;
        return self;
    };
}

@end
