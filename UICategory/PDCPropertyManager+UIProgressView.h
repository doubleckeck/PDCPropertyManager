//
//  PDCPropertyManager+UIProgressView.h
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"


typedef PDCPropertyManager *(^pdc_pro_progressViewStyle)(UIProgressViewStyle );
typedef PDCPropertyManager *(^pdc_pro_progress)(NSProgress *);

@interface PDCPropertyManager (UIProgressView)
//@property (strong, nonatomic) UIProgressView *progressView;

@property (nonatomic, readonly, copy) pdc_pro_progressViewStyle pro_progressViewStyle;

@property (nonatomic, readonly, copy) pdc_float pro_progress;

@property (nonatomic, readonly, copy) pdc_color pro_progressTintColor;

@property (nonatomic, readonly, copy) pdc_color pro_trackTintColor;

@property (nonatomic, readonly, copy) pdc_image pro_progressImage;

@property (nonatomic, readonly, copy) pdc_image pro_trackImage;

@property (nonatomic, readonly, copy) pdc_float_bool pro_progress_animated;

@property (nonatomic, readonly, copy) pdc_pro_progress pro_observedProgress NS_AVAILABLE_IOS(9_0);

@end
