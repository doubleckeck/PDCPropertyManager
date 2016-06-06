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

-(pdc_image )iv_highlightedImage
{
    return ^PDCPropertyManager *(UIImage *image){
        self.pdc_imageView.highlightedImage = image;
        return self;
    };
}

-(pdc_bool )iv_highlighted
{
    return ^PDCPropertyManager *(BOOL highlighted){
        self.pdc_imageView.highlighted = highlighted;
        return self;
    };
}

-(pdc_bool )iv_userInteractionEnabled
{
    return ^PDCPropertyManager *(BOOL userInteractionEnabled){
        self.pdc_imageView.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

-(pdc_iv_array )iv_animationImages
{
    return ^PDCPropertyManager *(NSArray<UIImage *> * animationImages){
        self.pdc_imageView.animationImages = animationImages;
        return self;
    };
}

-(pdc_iv_array )iv_highlightedAnimationImages
{
    return ^PDCPropertyManager *(NSArray<UIImage *> * highlightedAnimationImages){
        self.pdc_imageView.highlightedAnimationImages = highlightedAnimationImages;
        return self;
    };
}

-(pdc_void )iv_startAnimating
{
    return ^PDCPropertyManager *(void ){
        [self.pdc_imageView startAnimating];
        return self;
    };
}

-(pdc_void )iv_stopAnimating
{
    return ^PDCPropertyManager *(void ){
        [self.pdc_imageView stopAnimating];
        return self;
    };
}
@end
