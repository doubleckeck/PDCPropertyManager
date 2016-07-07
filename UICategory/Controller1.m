//
//  Controller1.m
//  UICategory
//
//  Created by KH on 16/7/7.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "Controller1.h"
#import "UIView+PDCAdd.h"

@interface Controller1()
@property (strong, nonatomic) UIButton *btn;
@property (strong, nonatomic) UILabel *label;

@end

@implementation Controller1
-(void )viewDidLoad
{
    [super viewDidLoad];
    
    self.btn = [UIButton buttonWithType:UIButtonTypeSystem];
    self.label = [UILabel new];
    
    [self.view addSubview:self.btn];
    [self.view addSubview:self.label];
    
    
    self.btn.pdc_manager
    .x(20).y(80).width(100).height(40)
    .backgroundColor([UIColor purpleColor])
    .action(self,@selector(btnClick:),UIControlEventTouchUpInside)
    .bt_title(@"这是个按钮",UIControlStateNormal);
    
    
    self.label.pdc_manager
    .frame(CGRectMake(20, 160, 250, 60))
    .lb_text(@"这个是label，背景颜色为灰色，文字颜色为白色")
    .backgroundColor([UIColor grayColor])
    .lb_textColor([UIColor whiteColor]);
    
}

-(void )btnClick:(id)sender
{
    NSLog(@"尼玛");
}

@end
