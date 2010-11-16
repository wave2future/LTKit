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

#import <QuartzCore/QuartzCore.h>
#import "LTKit/LTTableViewCellCompositeView.h"
#import "LTKit/LTTableViewCell.h"
#import "LTKit/NSObject+LTAdditions.h"

@implementation LTTableViewCellCompositeView

@synthesize tableViewCell = tableViewCell_;

#pragma mark -
#pragma mark LTTableViewCellContentView Methods

+ (id)compositeViewFromTableViewCell:(LTTableViewCell *)tableViewCell
{
	return [[[self alloc] initWithTableViewCell:tableViewCell] autorelease];
}

- (id)initWithTableViewCell:(LTTableViewCell *)tableViewCell;
{
	self = [super initWithFrame:CGRectZero];

	if (self != nil)
	{
		self.tableViewCell = tableViewCell;
        self.backgroundColor = [UIColor clearColor];
		self.opaque = NO;
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
    if ((! self.tableViewCell.selected) && (! self.tableViewCell.highlighted))
    {
        if ((self.tableViewCell.backgroundView != nil) && [self.tableViewCell.backgroundView isKindOfClass:[UIImageView class]])
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
            
            if ((label.shadowColor != nil) && (! CGSizeEqualToSize(label.shadowOffset, CGSizeZero)))
            {
                CGPoint shadowPoint = CGPointMake((label.frame.origin.x + label.shadowOffset.width), (label.frame.origin.y +
                	label.shadowOffset.height));

                [label.shadowColor set];
                [label.text drawAtPoint:shadowPoint forWidth:label.frame.size.width withFont:label.font minFontSize:label.minimumFontSize
                	actualFontSize:NULL lineBreakMode:label.lineBreakMode baselineAdjustment:label.baselineAdjustment];
            }
            
            if (self.tableViewCell.selected || self.tableViewCell.highlighted)
            {
                [label.highlightedTextColor set];
            }
            else
            {
                [label.textColor set];
            }
            
            [label.text drawAtPoint:label.frame.origin forWidth:label.frame.size.width withFont:label.font
            	minFontSize:label.minimumFontSize actualFontSize:NULL lineBreakMode:label.lineBreakMode
                baselineAdjustment:label.baselineAdjustment];
		}
		else if ([property isKindOfClass:[UIImageView class]])
		{
			UIImageView * imageView = (UIImageView *)property;
			[imageView.image drawInRect:imageView.frame blendMode:kCGBlendModeNormal alpha:imageView.alpha];
		}
	}
    
    //Get the CGContext from this view
	CGContextRef context = UIGraphicsGetCurrentContext();
	//Set the stroke (pen) color
	CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
	//Set the width of the pen mark
	CGContextSetLineWidth(context, 1.0);

	//Define a rectangle
	CGContextAddRect(context, CGRectMake(self.contentStretch.origin.x * self.bounds.size.width, self.contentStretch.origin.y *
    	self.bounds.size.height, self.contentStretch.size.width * self.bounds.size.width, self.contentStretch.size.height *
        self.bounds.size.height));
	//Draw it
	CGContextStrokePath(context);
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