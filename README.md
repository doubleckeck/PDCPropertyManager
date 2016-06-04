# PDCUIKit
Easy to set UIKit property 


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
