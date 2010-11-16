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

#import <UIKit/UIKit.h>

///
/// A category on <tt>UIView</tt> that contains various helper methods.
///

@interface UIView (LTAdditions)

///
/// Returns the subview that has the topmost y coordinate within the localized coordinate system of this view, excluding subviews of type
/// <tt>LTTableViewCellCompositeView</tt> from the subview search
///
/// This method enumerates the subviews of this view and returns the subview that is located topmost in the localized coordinate system of
/// this view. Subviews of type <tt>LTTableViewCellCompositeView</tt> are not considered during the enumeration.
///
/// @returns a <tt>UIView</tt> representing the topmost subview or <tt>nil</tt> if there are no subviews in this view
///
/// @see LTTableViewCellCompositeView
///

- (UIView *)topmostSubviewExcludingCompositeViews;

///
/// Returns the subview that has the leftmost x coordinate within the localized coordinate system of this view, excluding subviews of type
/// <tt>LTTableViewCellCompositeView</tt> from the subview search
///
/// This method enumerates the subviews of this view and returns the subview that is located leftmost in the localized coordinate system of
/// this view. Subviews of type <tt>LTTableViewCellCompositeView</tt> are not considered during the enumeration.
///
/// @returns a <tt>UIView</tt> representing the leftmost subview or <tt>nil</tt> if there are no subviews in this view
///
/// @see LTTableViewCellCompositeView
///

- (UIView *)leftmostSubviewExcludingCompositeViews;

///
/// Returns the subview that has the bottommost y coordinate within the localized coordinate system of this view, excluding subviews of type
/// <tt>LTTableViewCellCompositeView</tt> from the subview search
///
/// This method enumerates the subviews of this view and returns the subview that is located bottommost in the localized coordinate system
/// of this view. Subviews of type <tt>LTTableViewCellCompositeView</tt> are not considered during the enumeration.
///
/// @returns a <tt>UIView</tt> representing the bottommost subview or <tt>nil</tt> if there are no subviews in this view
///
/// @see LTTableViewCellCompositeView
///

- (UIView *)bottommostSubviewExcludingCompositeViews;

///
/// Returns the subview that has the rightmost x coordinate within the localized coordinate system of this view, excluding subviews of type
/// <tt>LTTableViewCellCompositeView</tt> from the subview search
///
/// This method enumerates the subviews of this view and returns the subview that is located rightmost in the localized coordinate system of
/// this view. Subviews of type <tt>LTTableViewCellCompositeView</tt> are not considered during the enumeration.
///
/// @returns a <tt>UIView</tt> representing the rightmost subview or <tt>nil</tt> if there are no subviews in this view
///
/// @see LTTableViewCellCompositeView
///

- (UIView *)rightmostSubviewExcludingCompositeViews;

@end