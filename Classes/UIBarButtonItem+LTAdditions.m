//
//  Copyright 2010-2011 Michael Shannon Potter
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

#import "LTKit/UIBarButtonItem+LTAdditions.h"

@implementation UIBarButtonItem (LTAdditions)

#pragma mark -
#pragma mark UIBarButtonItem (LTAdditions) Methods

+ (UIBarButtonItem *)barButtonItemWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem target:(id)target action:(SEL)action
{
    return [[[self alloc] initWithBarButtonSystemItem:systemItem target:target action:action] autorelease];
}

+ (UIBarButtonItem *)barButtonItemWithCustomView:(UIView *)customView
{
    return [[[self alloc] initWithCustomView:customView] autorelease];
}

+ (UIBarButtonItem *)barButtonItemWithImage:(UIImage *)image style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action
{
    return [[[self alloc] initWithImage:image style:style target:target action:action] autorelease];
}

+ (UIBarButtonItem *)barButtonItemWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action
{
    return [[[self alloc] initWithTitle:title style:style target:target action:action] autorelease];
}

@end