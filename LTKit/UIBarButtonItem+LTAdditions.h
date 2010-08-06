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
/// A category on <tt>UIBarButtonItem</tt> that contains various helper methods.
///

@interface UIBarButtonItem (LTAdditions)

///
/// Autoreleases the return result of <tt>UIBarButtonItem</tt>'s -initWithBarButtonSystemItem:target:action:
///

+ (UIBarButtonItem *)barButtonItemWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem target:(id)target action:(SEL)action;

///
/// Autoreleases the return result of <tt>UIBarButtonItem</tt>'s -initWithCustomView:
///

+ (UIBarButtonItem *)barButtonItemWithCustomView:(UIView *)customView;

///
/// Autoreleases the return result of <tt>UIBarButtonItem</tt>'s -initWithImage:style:target:action:
///

+ (UIBarButtonItem *)barButtonItemWithImage:(UIImage *)image style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action;

///
/// Autoreleases the return result of <tt>UIBarButtonItem</tt>'s -initWithTitle:style:target:action:
///

+ (UIBarButtonItem *)barButtonItemWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action;

@end