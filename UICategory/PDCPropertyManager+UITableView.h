//
//  PDCPropertyManager+UITableView.h
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

typedef PDCPropertyManager *(^pdc_tb_dataSource)(id<UITableViewDataSource >);
typedef PDCPropertyManager *(^pdc_tb_delegate)(id<UITableViewDelegate >);
typedef PDCPropertyManager *(^pdc_tb_visualEffect)(UIVisualEffect *);
typedef PDCPropertyManager *(^pdc_tb_tableViewCellSeparatorStyle)(UITableViewCellSeparatorStyle);
typedef PDCPropertyManager *(^pdc_tb_nibRegist)(UINib *,NSString *);
typedef PDCPropertyManager *(^pdc_tb_classRegist)(Class ,NSString *);

@interface PDCPropertyManager (UITableView)

@property (nonatomic, readonly, copy) pdc_tb_dataSource   tb_dataSource;
@property (nonatomic, readonly, copy) pdc_tb_delegate   tb_delegate;

@property (nonatomic, readonly, copy) pdc_float   tb_rowHeight;
@property (nonatomic, readonly, copy) pdc_float   tb_sectionHeaderHeight;
@property (nonatomic, readonly, copy) pdc_float   tb_sectionFooterHeight;
@property (nonatomic, readonly, copy) pdc_float   tb_estimatedRowHeight NS_AVAILABLE_IOS(7_0);
@property (nonatomic, readonly, copy) pdc_float   tb_estimatedSectionHeaderHeight NS_AVAILABLE_IOS(7_0);
@property (nonatomic, readonly, copy) pdc_float   tb_estimatedSectionFooterHeight NS_AVAILABLE_IOS(7_0);
@property (nonatomic, readonly, copy) pdc_edgeInsets   tb_separatorInset NS_AVAILABLE_IOS(7_0) UI_APPEARANCE_SELECTOR;


@property (nonatomic, readonly, copy) pdc_view   tb_backgroundView;

@property (nonatomic, readonly, copy) pdc_bool   tb_editing;
@property (nonatomic, readonly, copy) pdc_bool_bool tb_editing_animation;

@property (nonatomic, readonly, copy) pdc_bool   tb_allowsSelection;
@property (nonatomic, readonly, copy) pdc_bool   tb_allowsSelectionDuringEditing;
@property (nonatomic, readonly, copy) pdc_bool   tb_allowsMultipleSelection NS_AVAILABLE_IOS(5_0);
@property (nonatomic, readonly, copy) pdc_bool   tb_allowsMultipleSelectionDuringEditing NS_AVAILABLE_IOS(5_0);

@property (nonatomic, readonly, copy) pdc_integer   tb_sectionIndexMinimumDisplayRowCount;

@property (nonatomic, readonly, copy) pdc_color   tb_sectionIndexColor NS_AVAILABLE_IOS(6_0) UI_APPEARANCE_SELECTOR;
@property (nonatomic, readonly, copy) pdc_color   tb_sectionIndexBackgroundColor NS_AVAILABLE_IOS(7_0) UI_APPEARANCE_SELECTOR;
@property (nonatomic, readonly, copy) pdc_color   tb_sectionIndexTrackingBackgroundColor NS_AVAILABLE_IOS(6_0) UI_APPEARANCE_SELECTOR;

@property (nonatomic, readonly, copy) pdc_tb_tableViewCellSeparatorStyle   tb_separatorStyle __TVOS_PROHIBITED;
@property (nonatomic, readonly, copy) pdc_color   tb_separatorColor UI_APPEARANCE_SELECTOR __TVOS_PROHIBITED;

@property (nonatomic, readonly, copy) pdc_tb_visualEffect   tb_separatorEffect NS_AVAILABLE_IOS(8_0) UI_APPEARANCE_SELECTOR __TVOS_PROHIBITED;

@property (nonatomic, readonly, copy) pdc_view   tb_tableHeaderView;
@property (nonatomic, readonly, copy) pdc_view   tb_tableFooterView;

@property (nonatomic, readonly, copy) pdc_bool   tb_cellLayoutMarginsFollowReadableWidth NS_AVAILABLE_IOS(9_0);
@property (nonatomic, readonly, copy) pdc_bool   tb_remembersLastFocusedIndexPath NS_AVAILABLE_IOS(9_0);

/* regist cell and header&footer view */
@property (nonatomic, readonly, copy) pdc_tb_nibRegist   tb_cellNib_reuse;
@property (nonatomic, readonly, copy) pdc_tb_classRegist   tb_cellClass_reuse;
@property (nonatomic, readonly, copy) pdc_tb_nibRegist   tb_HFNib_reuse;
@property (nonatomic, readonly, copy) pdc_tb_classRegist   tb_HFClass_reuse;

@end
