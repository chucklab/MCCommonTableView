//
//  MCCommonTableViewCell.m
//  MCCommonTableView
//
//  Created by Chao Ma on 08/19/2016.
//  Copyright © 2016 iMegatron's Lab. All rights reserved.
//

#import "MCCommonTableViewCell.h"

@implementation MCCommonTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self == nil) {
        return nil;
    }
    
    self.backgroundColor = [UIColor whiteColor];
    self.contentView.backgroundColor = [UIColor whiteColor];
    
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setCellData:(NSString *)cellData {
    self.textLabel.text = cellData;
}

@end
