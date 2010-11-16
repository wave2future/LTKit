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

#import "LTKit/UIView+LTAdditions.h"
#import "LTKit/LTTableViewCellCompositeView.h"

@implementation UIView (LTAdditions)

#pragma mark -
#pragma mark UIView (LTAdditions) Methods

- (UIView *)topmostSubviewExcludingCompositeViews
{
    UIView * topmostSubview = nil;
    
    for (UIView * subview in self.subviews)
    {
    	if (! [subview isKindOfClass:[LTTableViewCellCompositeView class]])
        {
            if (topmostSubview == nil)
            {
                topmostSubview = subview;
            }
            else if (CGRectGetMaxY(subview.frame) > CGRectGetMaxY(topmostSubview.frame))
            {
                topmostSubview = subview;
            }
        }
    }
    
    return topmostSubview;
}

- (UIView *)leftmostSubviewExcludingCompositeViews
{
    UIView * leftmostSubview = nil;
    
    for (UIView * subview in self.subviews)
    {
        if (! [subview isKindOfClass:[LTTableViewCellCompositeView class]])
        {
            if (leftmostSubview == nil)
            {
                leftmostSubview = subview;
            }
            else if (CGRectGetMinX(subview.frame) < CGRectGetMinX(leftmostSubview.frame))
            {
                leftmostSubview = subview;
            }
        }
    }
    
    return leftmostSubview;
}

- (UIView *)bottommostSubviewExcludingCompositeViews
{
    UIView * bottommostSubview = nil;
    
    for (UIView * subview in self.subviews)
    {
    	if (! [subview isKindOfClass:[LTTableViewCellCompositeView class]])
        {
            if (bottommostSubview == nil)
            {
                bottommostSubview = subview;
            }
            else if (CGRectGetMinY(subview.frame) < CGRectGetMinY(bottommostSubview.frame))
            {
                bottommostSubview = subview;
            }
        }
    }
    
    return bottommostSubview;
}

- (UIView *)rightmostSubviewExcludingCompositeViews
{
    UIView * rightmostSubview = nil;

    for (UIView * subview in self.subviews)
    {
    	if (! [subview isKindOfClass:[LTTableViewCellCompositeView class]])
        {
            if (rightmostSubview == nil)
            {
                rightmostSubview = subview;
            }
            else if (CGRectGetMaxX(subview.frame) > CGRectGetMaxX(rightmostSubview.frame))
            {
                rightmostSubview = subview;
            }
        }
    }
    
    return rightmostSubview;
}

@end