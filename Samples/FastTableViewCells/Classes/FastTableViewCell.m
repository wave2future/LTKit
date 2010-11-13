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

    CGSize size = self.bounds.size;
    self.contentStretch = CGRectMake((275.0 / size.width), 0.0, ((size.width - 276.0) / size.width), 1.0);
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