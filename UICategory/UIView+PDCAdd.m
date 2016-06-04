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
    return manager;
}


-(PDCPropertyManager *)pr_ownerWithKey:(void *)key
{
    return objc_getAssociatedObject(self, key);
}
@end
