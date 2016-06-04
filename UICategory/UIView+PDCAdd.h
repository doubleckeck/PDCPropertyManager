//
//  UIView+PDCAdd.h
//  UICategory
//
//  Created by KH on 16/6/4.
//  Copyright © 2016年 KH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PDCPropertyManager.h"

@interface UIView (PDCAdd)
@property (nonatomic, strong) PDCPropertyManager *pdc_manager;

@property (assign, nonatomic) CGFloat x;
@property (assign, nonatomic) CGFloat y;
@property (assign, nonatomic) CGFloat width;
@property (assign, nonatomic) CGFloat height;

@property (assign, nonatomic) CGPoint origin;
@property (assign, nonatomic) CGSize size;

@property (assign, readonly, nonatomic) CGFloat midX;
@property (assign, readonly, nonatomic) CGFloat midY;
@property (assign, readonly, nonatomic) CGFloat maxX;
@property (assign, readonly, nonatomic) CGFloat maxY;
@end
