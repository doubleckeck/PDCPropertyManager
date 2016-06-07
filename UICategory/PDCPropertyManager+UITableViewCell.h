//
//  PDCPropertyManager+UITableViewCell.h
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

typedef PDCPropertyManager *(^pdc_tableViewCellAccessoryType)(UITableViewCellAccessoryType );
typedef PDCPropertyManager *(^pdc_tableViewCellSelectionStyle)(UITableViewCellSelectionStyle );
typedef PDCPropertyManager *(^pdc_tableViewCellFocusStyle)(UITableViewCellFocusStyle ) NS_ENUM_AVAILABLE_IOS(9_0);

@interface PDCPropertyManager (UITableViewCell)

@property (nonatomic, readonly, copy) pdc_image     tbc_image;

@property (nonatomic, readonly, copy) pdc_string    tbc_text;

@property (nonatomic, readonly, copy) pdc_string    tbc_detailText;


@property (nonatomic, readonly, copy) pdc_tableViewCellSelectionStyle tbc_selectionStyle;

@property (nonatomic, readonly, copy) pdc_bool tbc_selected;

@property (nonatomic, readonly, copy) pdc_bool tbc_highlighted;

@property (nonatomic, readonly, copy) pdc_bool_bool tbc_selected_highlighted;

@property (nonatomic, readonly, copy) pdc_bool_bool tbc_highlighted_animation;

@property (nonatomic, readonly, copy) pdc_bool tbc_showsReorderControl;

@property (nonatomic, readonly, copy) pdc_bool tbc_shouldIndentWhileEditing;

@property (nonatomic, readonly, copy) pdc_bool tbc_editing;

@property (nonatomic, readonly, copy) pdc_bool_bool tbc_editing_animation;


@property (nonatomic, readonly, copy) pdc_view tbc_backgroundView;

@property (nonatomic, readonly, copy) pdc_view tbc_selectedBackgroundView;

@property (nonatomic, readonly, copy) pdc_view tbc_multipleSelectionBackgroundView;


@property (nonatomic, readonly, copy) pdc_tableViewCellAccessoryType tbc_accessoryType;

@property (nonatomic, readonly, copy) pdc_view tbc_accessoryView;

@property (nonatomic, readonly, copy) pdc_tableViewCellAccessoryType tbc_editingAccessoryType;

@property (nonatomic, readonly, copy) pdc_view tbc_editingAccessoryView;


@property (nonatomic, readonly, copy) pdc_integer       tbc_indentationLevel;

@property (nonatomic, readonly, copy) pdc_float         tbc_indentationWidth;

@property (nonatomic, readonly, copy) pdc_edgeInsets    tbc_separatorInset NS_AVAILABLE_IOS(7_0) UI_APPEARANCE_SELECTOR __TVOS_PROHIBITED;

@property (nonatomic, readonly, copy) pdc_tableViewCellFocusStyle tbc_focusStyle NS_AVAILABLE_IOS(9_0) UI_APPEARANCE_SELECTOR;

@end
