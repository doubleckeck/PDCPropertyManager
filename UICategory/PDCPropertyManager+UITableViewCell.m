//
//  PDCPropertyManager+UITableViewCell.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+UITableViewCell.h"

@implementation PDCPropertyManager (UITableViewCell)
-(pdc_image )tbc_image
{
    return ^PDCPropertyManager *(UIImage *image){
        self.pdc_tableViewCell.imageView.image = image;
        return self;
    };
}

-(pdc_string )tbc_text
{
    return ^PDCPropertyManager *(NSString *text){
        self.pdc_tableViewCell.textLabel.text = text;
        return self;
    };
}

-(pdc_string )tbc_detailText
{
    return ^PDCPropertyManager *(NSString *detailText){
        self.pdc_tableViewCell.detailTextLabel.text = detailText;
        return self;
    };
}

-(pdc_tableViewCellSelectionStyle )tbc_selectionStyle
{
    return ^PDCPropertyManager *(UITableViewCellSelectionStyle selectionStyle){
        self.pdc_tableViewCell.selectionStyle = selectionStyle;
        return self;
    };
}

-(pdc_bool )tbc_selected
{
    return ^PDCPropertyManager *(BOOL selected){
        self.pdc_tableViewCell.selected = selected;
        return self;
    };
}

-(pdc_bool )tbc_highlighted
{
    return ^PDCPropertyManager *(BOOL highlighted){
        self.pdc_tableViewCell.highlighted = highlighted;
        return self;
    };
}

-(pdc_bool )tbc_showsReorderControl
{
    return ^PDCPropertyManager *(BOOL showsReorderControl){
        self.pdc_tableViewCell.showsReorderControl = showsReorderControl;
        return self;
    };
}

-(pdc_bool )tbc_shouldIndentWhileEditing
{
    return ^PDCPropertyManager *(BOOL shouldIndentWhileEditing){
        self.pdc_tableViewCell.shouldIndentWhileEditing = shouldIndentWhileEditing;
        return self;
    };
}

-(pdc_bool )tbc_editing
{
    return ^PDCPropertyManager *(BOOL editing){
        self.pdc_tableViewCell.editing = editing;
        return self;
    };
}

-(pdc_bool_bool )tbc_selected_highlighted
{
    return ^PDCPropertyManager *(BOOL selected,BOOL highlighted){
        [self.pdc_tableViewCell setSelected:selected animated:highlighted];
        return self;
    };
}

-(pdc_bool_bool )tbc_highlighted_animation
{
    return ^PDCPropertyManager *(BOOL highlighted,BOOL animation){
        [self.pdc_tableViewCell setHighlighted:highlighted animated:animation];
        return self;
    };
}

-(pdc_bool_bool )tbc_editing_animation
{
    return ^PDCPropertyManager *(BOOL editing,BOOL animation){
        [self.pdc_tableViewCell setEditing:editing animated:animation];
        return self;
    };
}



-(pdc_tableViewCellAccessoryType )tbc_accessoryType
{
    return ^PDCPropertyManager *(UITableViewCellAccessoryType accessoryType){
        self.pdc_tableViewCell.accessoryType = accessoryType;
        return self;
    };
}

-(pdc_tableViewCellAccessoryType )tbc_editingAccessoryType
{
    return ^PDCPropertyManager *(UITableViewCellAccessoryType editingAccessoryType){
        self.pdc_tableViewCell.editingAccessoryType = editingAccessoryType;
        return self;
    };
}

-(pdc_view )tbc_backgroundView
{
    return ^PDCPropertyManager *(UIView *backgroundView){
        self.pdc_tableViewCell.backgroundView = backgroundView;
        return self;
    };
}

-(pdc_view )tbc_selectedBackgroundView
{
    return ^PDCPropertyManager *(UIView *selectedBackgroundView){
        self.pdc_tableViewCell.selectedBackgroundView = selectedBackgroundView;
        return self;
    };
}

-(pdc_view )tbc_multipleSelectionBackgroundView
{
    return ^PDCPropertyManager *(UIView *multipleSelectionBackgroundView){
        self.pdc_tableViewCell.multipleSelectionBackgroundView = multipleSelectionBackgroundView;
        return self;
    };
}

-(pdc_view )tbc_accessoryView
{
    return ^PDCPropertyManager *(UIView *accessoryView){
        self.pdc_tableViewCell.accessoryView = accessoryView;
        return self;
    };
}

-(pdc_view )tbc_editingAccessoryView
{
    return ^PDCPropertyManager *(UIView *editingAccessoryView){
        self.pdc_tableViewCell.editingAccessoryView = editingAccessoryView;
        return self;
    };
}

-(pdc_integer )tbc_indentationLevel
{
    return ^PDCPropertyManager *(NSInteger indentationLevel){
        self.pdc_tableViewCell.indentationLevel = indentationLevel;
        return self;
    };
}

-(pdc_edgeInsets )tbc_separatorInset
{
    return ^PDCPropertyManager *(UIEdgeInsets separatorInset){
        self.pdc_tableViewCell.separatorInset = separatorInset;
        return self;
    };
}

-(pdc_float )tbc_indentationWidth
{
    return ^PDCPropertyManager *(CGFloat indentationWidth){
        self.pdc_tableViewCell.indentationWidth = indentationWidth;
        return self;
    };
}

-(pdc_tableViewCellFocusStyle )tbc_focusStyle
{
    return ^PDCPropertyManager *(UITableViewCellFocusStyle focusStyle){
        self.pdc_tableViewCell.focusStyle = focusStyle;
        return self;
    };
}
@end
