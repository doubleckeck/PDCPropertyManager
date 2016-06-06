//
//  PDCPropertyManager+UIImageView.h
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

typedef PDCPropertyManager *(^pdc_iv_array)(NSArray<UIImage *> *);

@interface PDCPropertyManager (UIImageView)
//property
@property (nonatomic, readonly, copy) pdc_image     iv_image;

@property (nonatomic, readonly, copy) pdc_image     iv_highlightedImage;

@property (nonatomic, readonly, copy) pdc_bool      iv_userInteractionEnabled;

@property (nonatomic, readonly, copy) pdc_bool      iv_highlighted;

@property (nonatomic, readonly, copy) pdc_iv_array  iv_animationImages;

@property (nonatomic, readonly, copy) pdc_iv_array  iv_highlightedAnimationImages;

//method
@property (nonatomic, readonly, copy) pdc_void      iv_startAnimating;

@property (nonatomic, readonly, copy) pdc_void      iv_stopAnimating;

@end
