//
//  ViewController.m
//  UICategory
//
//  Created by KH on 16/6/4.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "ViewController.h"
#import "UIView+PDCAdd.h"
#import "SubLabel.h"
#import "PDCPropertyManager+UIImageView.h"
#import "PDCPropertyManager+UIButton.h"
#import "PDCPropertyManager+UILabel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *myView;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet SubLabel *subLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageVIew;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}


-(void )viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    /* set view */
    self.myView.pdc_manager
    .backgroundColor([UIColor redColor]);
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.myView.pdc_manager.x(100).y(300).width(400).height(300);
    });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.myView.pdc_manager
        .center(CGPointMake(200, 200))
        .backgroundColor([UIColor orangeColor]);
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            self.myView.pdc_manager.x(300);
        });
        
    });
    
    
    /* set label */
    self.label.pdc_manager
    .lb_text(@"this is a label")
    .backgroundColor([UIColor purpleColor]);
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.label.pdc_manager
        .lb_text(@"this is a label,now it change color")
        .backgroundColor([UIColor brownColor])
        .frame(CGRectMake(20, 100, 100, 50));
    });
    
    /* sub label,now just suport UIKit */
    self.subLabel.pdc_manager
    .backgroundColor([UIColor redColor]);  //nothing to do
    
    /* btn title */
    self.btn.pdc_manager
    .bt_title(@"this is button title",UIControlStateNormal)
    .bt_image([UIImage imageNamed:@"123"],UIControlStateNormal);
    
    
    self.btn.pdc_manager
    .action(self,@selector(action:),UIControlEventTouchUpInside);

    
    self.imageVIew.pdc_manager.iv_image([UIImage imageNamed:@"123"]);
}

-(void )action:(id )sender
{
    NSLog(@"action click");
}

- (IBAction)change:(id)sender
{
    [self.btn setImage:[UIImage imageNamed:@"123"] forState:UIControlStateNormal];
}
@end
