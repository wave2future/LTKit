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

#import "LTKit/NSObject+LTAdditions.h"
#import <objc/runtime.h>

@implementation NSObject (LTAdditions)

#pragma mark -
#pragma mark NSObject (LTAdditions) Methods

+ (NSArray *)propertyNames
{
	NSUInteger numberOfProperties;
	objc_property_t * properties = class_copyPropertyList([self class], (& numberOfProperties));

	NSMutableArray * propertyNames = [NSMutableArray arrayWithCapacity:numberOfProperties];

	for (NSUInteger index = 0; index < numberOfProperties; index++)
	{
		objc_property_t property = properties[index];
		[propertyNames addObject:[NSString stringWithCString:property_getName(property)	encoding:NSUTF8StringEncoding]];
	}

	return propertyNames;
}

@end