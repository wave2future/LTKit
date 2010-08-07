//
//  Copyright 2010 Michael Shannon Potter
//
//  LucasTizma
//  www.lucastizma.com
//  lucastizma@lucastizma.com (E-mail/AIM)
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "LTKit/LTTableViewCell.h"
#import "LTKit/LTTableViewCellCompositeView.h"

@implementation LTTableViewCell

@synthesize compositeView = compositeView_;

#pragma mark -
#pragma mark LTTableViewCell Methods

- (void)drawCompositeView
{
	if (self.compositeView == nil)
    {
        self.compositeView = [LTTableViewCellCompositeView compositeViewWithTableViewCell:self];
        self.compositeView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.compositeView.contentMode = UIViewContentModeRedraw;
        
        for (UIView * subview in self.contentView.subviews)
        {
            subview.hidden = YES;
        }
        
        [self.contentView addSubview:self.compositeView];
    }
    
    [self setNeedsDisplay];
}

#pragma mark -
#pragma mark UITableViewCell Methods

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self != nil)
    {
        self.compositeView = nil;
    }
    
    return self;
}

#pragma mark -
#pragma mark UIView Methods

- (id)initWithFrame:(CGRect)frame
{
    return [self initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
}

- (void)setNeedsDisplay
{
    [super setNeedsDisplay];
    
    [self.compositeView setNeedsDisplay];
}

#pragma mark -
#pragma mark NSObject Methods

- (id)init
{
    return [self initWithFrame:CGRectZero];
}

- (void)dealloc
{
    [compositeView_ release];
    
    compositeView_ = nil;
    
    [super dealloc];
}

#pragma mark -
#pragma mark NSObject (UIKit Additions) Methods

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.compositeView = nil;
}

@end