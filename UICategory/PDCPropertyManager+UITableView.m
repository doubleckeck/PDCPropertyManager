//
//  PDCPropertyManager+UITableView.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+UITableView.h"

@implementation PDCPropertyManager (UITableView)
-(pdc_tb_dataSource )tb_dataSource
{
    return ^PDCPropertyManager *(id<UITableViewDataSource> dataSource){
        self.pdc_tableView.dataSource = dataSource;
        return self;
    };
}

-(pdc_tb_delegate )tb_delegate
{
    return ^PDCPropertyManager *(id<UITableViewDelegate> delegate){
        self.pdc_tableView.delegate = delegate;
        return self;
    };
}

-(pdc_float )tb_rowHeight
{
    return ^PDCPropertyManager *(CGFloat rowHeight){
        self.pdc_tableView.rowHeight = rowHeight;
        return self;
    };
}

-(pdc_float )tb_sectionHeaderHeight
{
    return ^PDCPropertyManager *(CGFloat sectionHeaderHeight){
        self.pdc_tableView.sectionHeaderHeight = sectionHeaderHeight;
        return self;
    };
}

-(pdc_float )tb_sectionFooterHeight
{
    return ^PDCPropertyManager *(CGFloat sectionFooterHeight){
        self.pdc_tableView.sectionFooterHeight = sectionFooterHeight;
        return self;
    };
}

-(pdc_float )tb_estimatedRowHeight
{
    return ^PDCPropertyManager *(CGFloat estimatedRowHeight){
        self.pdc_tableView.estimatedRowHeight = estimatedRowHeight;
        return self;
    };
}

-(pdc_float )tb_estimatedSectionHeaderHeight
{
    return ^PDCPropertyManager *(CGFloat estimatedSectionHeaderHeight){
        self.pdc_tableView.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight;
        return self;
    };
}

-(pdc_float )tb_estimatedSectionFooterHeight
{
    return ^PDCPropertyManager *(CGFloat estimatedSectionFooterHeight){
        self.pdc_tableView.rowHeight = estimatedSectionFooterHeight;
        return self;
    };
}

-(pdc_edgeInsets )tb_separatorInset
{
    return ^PDCPropertyManager *(UIEdgeInsets separatorInset){
        self.pdc_tableView.separatorInset = separatorInset;
        return self;
    };
}

-(pdc_view )tb_backgroundView
{
    return ^PDCPropertyManager *(UIView * backgroundView){
        self.pdc_tableView.backgroundView = backgroundView;
        return self;
    };
}

-(pdc_bool )tb_editing
{
    return ^PDCPropertyManager *(BOOL editing){
        self.pdc_tableView.editing = editing;
        return self;
    };
}

-(pdc_bool_bool )tb_editing_animation
{
    return ^PDCPropertyManager *(BOOL editing,BOOL animation){
        [self.pdc_tableView setEditing:editing animated:animation];
        return self;
    };
}

-(pdc_bool )tb_allowsSelection
{
    return ^PDCPropertyManager *(BOOL allowsSelection){
        self.pdc_tableView.allowsSelection = allowsSelection;
        return self;
    };
}


-(pdc_bool )tb_allowsSelectionDuringEditing
{
    return ^PDCPropertyManager *(BOOL allowsSelectionDuringEditing){
        self.pdc_tableView.allowsSelectionDuringEditing = allowsSelectionDuringEditing;
        return self;
    };
}


-(pdc_bool )tb_allowsMultipleSelection
{
    return ^PDCPropertyManager *(BOOL allowsMultipleSelection){
        self.pdc_tableView.allowsMultipleSelection = allowsMultipleSelection;
        return self;
    };
}


-(pdc_bool )tb_allowsMultipleSelectionDuringEditing
{
    return ^PDCPropertyManager *(BOOL allowsMultipleSelectionDuringEditing){
        self.pdc_tableView.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing;
        return self;
    };
}

-(pdc_integer )tb_sectionIndexMinimumDisplayRowCount
{
    return ^PDCPropertyManager *(NSInteger sectionIndexMinimumDisplayRowCount){
        self.pdc_tableView.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount;
        return self;
    };
}

-(pdc_color )tb_sectionIndexColor
{
    return ^PDCPropertyManager *(UIColor *sectionIndexColor){
        self.pdc_tableView.sectionIndexColor = sectionIndexColor;
        return self;
    };
}

-(pdc_color )tb_sectionIndexBackgroundColor
{
    return ^PDCPropertyManager *(UIColor *sectionIndexBackgroundColor){
        self.pdc_tableView.sectionIndexBackgroundColor = sectionIndexBackgroundColor;
        return self;
    };
}

-(pdc_color )tb_sectionIndexTrackingBackgroundColor
{
    return ^PDCPropertyManager *(UIColor *sectionIndexTrackingBackgroundColor){
        self.pdc_tableView.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor;
        return self;
    };
}

-(pdc_tb_tableViewCellSeparatorStyle )tb_separatorStyle
{
    return ^PDCPropertyManager *(UITableViewCellSeparatorStyle separatorStyle){
        self.pdc_tableView.separatorStyle = separatorStyle;
        return self;
    };
}

-(pdc_color )tb_separatorColor
{
    return ^PDCPropertyManager *(UIColor *separatorColor){
        self.pdc_tableView.separatorColor = separatorColor;
        return self;
    };
}

-(pdc_tb_visualEffect )tb_separatorEffect
{
    return ^PDCPropertyManager *(UIVisualEffect *separatorEffect){
        self.pdc_tableView.separatorEffect = separatorEffect;
        return self;
    };
}

-(pdc_view )tb_tableHeaderView
{
    return ^PDCPropertyManager *(UIView *tableHeaderView){
        self.pdc_tableView.tableHeaderView = tableHeaderView;
        return self;
    };
}

-(pdc_view )tb_tableFooterView
{
    return ^PDCPropertyManager *(UIView *tableFooterView){
        self.pdc_tableView.tableFooterView = tableFooterView;
        return self;
    };
}

-(pdc_bool )tb_cellLayoutMarginsFollowReadableWidth
{
    return ^PDCPropertyManager *(BOOL cellLayoutMarginsFollowReadableWidth){
        self.pdc_tableView.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth;
        return self;
    };
}

-(pdc_bool )tb_remembersLastFocusedIndexPath
{
    return ^PDCPropertyManager *(BOOL remembersLastFocusedIndexPath){
        self.pdc_tableView.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath;
        return self;
    };
}

/* regist cell and header&footer view */
-(pdc_tb_nibRegist )tb_cellNib_reuse
{
    return ^PDCPropertyManager *(UINib *nib,NSString *reuse){
        [self.pdc_tableView registerNib:nib forCellReuseIdentifier:reuse];
        return self;
    };
}

-(pdc_tb_classRegist )tb_cellClass_reuse
{
    return ^PDCPropertyManager *(Class cls,NSString *reuse){
        [self.pdc_tableView registerClass:cls forCellReuseIdentifier:reuse];
        return self;
    };
}

-(pdc_tb_nibRegist )tb_HFNib_reuse
{
    return ^PDCPropertyManager *(UINib *nib,NSString *reuse){
        [self.pdc_tableView registerNib:nib forHeaderFooterViewReuseIdentifier:reuse];
        return self;
    };
}

-(pdc_tb_classRegist )tb_HFClass_reuse
{
    return ^PDCPropertyManager *(Class cls,NSString *reuse){
        [self.pdc_tableView registerClass:cls forHeaderFooterViewReuseIdentifier:reuse];
        return self;
    };
}
@end
