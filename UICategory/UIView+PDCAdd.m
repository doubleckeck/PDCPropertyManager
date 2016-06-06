//
//  UIView+PDCAdd.m
//  UICategory
//
//  Created by KH on 16/6/4.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "UIView+PDCAdd.h"
#import <objc/runtime.h>
@implementation UIView (PDCAdd)
-(void )setPdc_manager:(PDCPropertyManager *)pdc_manager
{
    objc_setAssociatedObject(self, @selector(pdc_manager), pdc_manager, OBJC_ASSOCIATION_RETAIN);
}

-(PDCPropertyManager *)pdc_manager
{
    PDCPropertyManager *manager = [self pr_ownerWithKey:_cmd];
    if (nil == manager)
    {
        manager = [PDCPropertyManager new];
    }
    
    //is UIView
    if ([self isMemberOfClass:[UIView class]])
    {
        manager.pdc_view = self;
    }
    //is UILabel
    else if ([self isMemberOfClass:[UILabel class]])
    {
        manager.pdc_label = (UILabel *)self;
    }
    //is UIButton
    else if ([self isMemberOfClass:[UIButton class]])
    {
        manager.pdc_button = (UIButton *)self;
    }
    //is UITextField
    else if ([self isMemberOfClass:[UITextField class]])
    {
        manager.pdc_textField = (UITextField *)self;
    }
    //is UITextField
    else if ([self isMemberOfClass:[UIImageView class]])
    {
        manager.pdc_imageView = (UIImageView *)self;
    }
    return manager;
}


-(PDCPropertyManager *)pr_ownerWithKey:(void *)key
{
    return objc_getAssociatedObject(self, key);
}


/* x,y,midX,midY,maxX,maxY,width,height */
-(void )setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

-(CGFloat )x
{
    return CGRectGetMinX(self.frame);
}

-(void )setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

-(CGFloat )y
{
    return CGRectGetMinY(self.frame);
}

-(CGFloat )midX
{
    return CGRectGetMidX(self.frame);
}

-(CGFloat )maxX
{
    return CGRectGetMaxX(self.frame);
}

-(CGFloat )midY
{
    return CGRectGetMidY(self.frame);
}

-(CGFloat )maxY
{
    return CGRectGetMaxY(self.frame);
}

-(void )setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

-(CGFloat )width
{
    return CGRectGetWidth(self.frame);
}

-(void )setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

-(CGFloat )height
{
    return CGRectGetHeight(self.frame);
}


/* origin,size */
-(void )setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

-(CGPoint )origin
{
    return self.frame.origin;
}

-(void )setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

-(CGSize )size
{
    return self.frame.size;
}
@end
