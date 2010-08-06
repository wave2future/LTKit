//
//  ATableViewCell.m
//  FastTableViewCells
//
//  Created by Michael Shannon Potter on 8/6/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "ATableViewCell.h"


@implementation ATableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if ((self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) {
        // Initialization code
    }
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {

    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)dealloc {
    [super dealloc];
}


@end
