//
//  CustomTableCell.m
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/24/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "CustomTableCell.h"

@implementation CustomTableCell

@synthesize solutionNameCustomLabel, solutionLocationCustomLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
