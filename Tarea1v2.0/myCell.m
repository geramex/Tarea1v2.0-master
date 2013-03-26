//
//  myCell.m
//  Tarea1v2.0
//
//  Created by Jorge Guerra on 25/03/13.
//  Copyright (c) 2013 Jorge Guerra. All rights reserved.
//

#import "myCell.h"

@implementation myCell

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
