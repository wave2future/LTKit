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

#import "LTKit/LTTableViewCellCompositeView.h"
#import "LTKit/LTTableViewCell.h"
#import "LTKit/NSObject+LTAdditions.h"

@implementation LTTableViewCellCompositeView

@synthesize tableViewCell = tableViewCell_;

#pragma mark -
#pragma mark LTTableViewCellContentView Methods

+ (id)compositeViewWithTableViewCell:(LTTableViewCell *)tableViewCell
{
	return [[[self alloc] initWithTableViewCell:tableViewCell] autorelease];
}

- (id)initWithTableViewCell:(LTTableViewCell *)tableViewCell;
{
	self = [super initWithFrame:CGRectZero];

	if (self != nil)
	{
		self.tableViewCell = tableViewCell;
		self.opaque = YES;
	}

	return self;
}

- (void)setTableViewCell:(LTTableViewCell *)tableViewCell
{
	if (tableViewCell != self.tableViewCell)
	{
		tableViewCell_ = tableViewCell;

		if (self.tableViewCell != nil)
		{
			self.frame = self.tableViewCell.contentView.bounds;
		}
	}
}

#pragma mark -
#pragma mark UIView Methods

- (void)drawRect:(CGRect)rect
{
    if (!self.tableViewCell.selected && !self.tableViewCell.highlighted)
    {
        if (self.tableViewCell.backgroundView != nil && [self.tableViewCell.backgroundView isKindOfClass:[UIImageView class]])
        {
            UIImageView * imageView = (UIImageView *)self.tableViewCell.backgroundView;
            [imageView.image drawInRect:imageView.frame blendMode:kCGBlendModeNormal alpha:imageView.alpha];
        }
    }

	NSArray * propertyNames = [[self.tableViewCell class] propertyNames];

	for (NSString * propertyName in propertyNames)
	{
		id property = [self.tableViewCell valueForKey:propertyName];

		if ([property isKindOfClass:[UILabel class]])
		{
			UILabel * label = (UILabel *)property;
            
            if (label.shadowColor != nil)
            {
                [label.shadowColor set];
                [label.text drawInRect:CGRectOffset(label.frame, label.shadowOffset.width, label.shadowOffset.height) withFont:label.font
                	lineBreakMode:label.lineBreakMode alignment:label.textAlignment];
            }
            
            if (self.tableViewCell.selected || self.tableViewCell.highlighted)
            {
                [label.highlightedTextColor set];
            }
            else
            {
                [label.textColor set];
            }

			[label.text drawInRect:label.frame withFont:label.font lineBreakMode:label.lineBreakMode alignment:label.textAlignment];
		}
		else if ([property isKindOfClass:[UIImageView class]])
		{
			UIImageView * imageView = (UIImageView *)property;
			[imageView.image drawInRect:imageView.frame blendMode:kCGBlendModeNormal alpha:imageView.alpha];
		}
	}
}

#pragma mark -
#pragma mark NSObject Methods

- (id)init
{
	return [self initWithTableViewCell:nil];
}

- (void)dealloc
{
	tableViewCell_ = nil;

	[super dealloc];
}

@end