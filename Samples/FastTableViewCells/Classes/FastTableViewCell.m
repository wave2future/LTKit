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

#import "LTKit/LTKit.h"
#import "FastTableViewCell.h"

@implementation FastTableViewCell

@synthesize imageView = imageView_;
@synthesize firstLabel = firstLabel_;
@synthesize secondLabel = secondLabel_;
@synthesize thirdLabel = thirdLabel_;

#pragma mark -
#pragma mark UIView Methods

- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    
    // In this particular subclass of LTTableViewCell, the right sides of the frames of the three labels represent the beginning of the
    // portion of the view to be stretched during resizing.
    
    UIView * rightmostSubview = [self.contentView rightmostSubviewExcludingCompositeViews];
    
    if (rightmostSubview != nil)
    {
    	CGSize contentSize = self.bounds.size;
        CGFloat rightmostXCoordinate = CGRectGetMaxX(rightmostSubview.frame);
        
        //[UIView setAnimationsEnabled:NO];
        self.compositeView.contentStretch = CGRectMake((rightmostXCoordinate - 1.0) / contentSize.width, 0, 1.0 / contentSize.width ,1.0);
        //self.compositeView.contentStretch = CGRectMake((rightmostXCoordinate / contentSize.width), 0.0, ((contentSize.width - rightmostXCoordinate) /
        //	contentSize.width), 1.0);
        //[UIView setAnimationsEnabled:YES];
        
        NSLog(@"self.firstLabel.text: %@", self.firstLabel.text);
        NSLog(@"self.secondLabel.text: %@", self.secondLabel.text);
        NSLog(@"self.thirdLabel.text: %@", self.thirdLabel.text);
        
        NSLog(@"contentSize: %@", NSStringFromCGSize(contentSize));
        NSLog(@"rightmostXCoordinate: %f", rightmostXCoordinate);
        NSLog(@"self.contentStretch: %@", NSStringFromCGRect(self.contentStretch));
        NSLog(@"self.contentView.contentStretch: %@", NSStringFromCGRect(self.contentView.contentStretch));
        NSLog(@"self.compositeView.contentStretch: %@\n\n", NSStringFromCGRect(self.compositeView.contentStretch));
    }
}

#pragma mark -
#pragma mark NSObject Methods

- (id)init
{
	self = [super init];

	if (self != nil)
	{
		self.imageView = nil;
		self.firstLabel = nil;
		self.secondLabel = nil;
		self.thirdLabel = nil;
	}

	return self;
}

- (void)dealloc
{
	[imageView_ release];
	[firstLabel_ release];
	[secondLabel_ release];
	[thirdLabel_ release];

	imageView_ = nil;
	firstLabel_ = nil;
	secondLabel_ = nil;
	thirdLabel_ = nil;

    [super dealloc];
}

@end