# LTKit #
<a name="top"></a>

## Change Log ##

Nontrivial changes to this repository will be logged here.

- **02/08/2011 09:40 p.m.**: Refocused **LTKit** and eliminated fast table view rendering as this feature is mostly irrelevant with the advent of faster hardware and newer APIs.
- **05/18/2010 08:56 p.m.**: Began using [Doxygen][7] for code commenting.
- **05/10/2010 07:20 p.m.**: Repository creation.

## Usage Instructions ##

**LTKit** is built as a static library and is included similar to other static libraries.

1. Add `LTKit.xcodeproj` to your project, ideally copying it to your project folder
1. Set the `libLTKit.a` static library as a target direct dependency
1. Set your project or target header search paths to point to the `LTKit` root directory
1. Add the `-ObjC` and `-all_load` linker flags to your project or target settings

## Overview ##

This repository represents a serious effort to create a meaningful, well-developed, thoroughly-tested, and easily-usable framework for iOS development. Meant to be flexible yet powerful, **LTKit** can hopefully provide a collection of useful classes to make iOS development easier and more rewarding.

With a strong emphasis on good UI and UX practices, **LTKit**, at least for the time being, will likely focus on processes that simplify the development and design of common UI tasks and even offer new views, classes, and categories for improving the end user's experience.

I very strongly believe that great apps require beautiful, sensible design. Apple is arguably the champion of aesthetics and design in the consumer technology industry. Their iOS platform offers extremely powerful tools to really bring out the most in the apps we developers create. This project is my attempt to share what development experience I've gained over the past few years. If it becomes a source of insight to over developers, then great!

## Purpose ##

**LTKit** has some lofty goals. At this point, I don't even know how or if some of these will be achieved, but after all, what's the point in setting easily-reachable goals?

### Guidelines ###

  - **Pristine Code**: Consistent coding style, best-practice development, and self-documentation.
  - **Highly Generic**: Code that is as broad and reusable as possible.
  - **Deep Implementation**: Considering as many variations and use cases as possible to prevent underdeveloped or edge-case-intolerant features.
  - **Detailed Documentation Where Necessary**: At the very least, thorough documentation and discussion for every non-trivial method.
  - **Plenty of Examples**: The creation of sample projects to showcase each major feature with as much variety as possible.
  - **Current**: Always making use of the latest official SDK and third-party library offerings. (**LTKit** will always be targeting the very latest, non-beta SDK, and new conventions and APIs will be adopted quickly.)

### Goals ###

  - **New UI Features**: **LTKit** will attempt to develop new views, new ways of interacting with existing views, and a means of standardizing UX and design practices.
  - **Advanced Debug Logging**: Especially for things like view hierarchies, a means for automatically generating `NSLog` statements that contain a variety of useful debugging statements would be extremely helpful. A bridge to a basic Cocoa desktop application that can read, parse, and display this debug output in an organized, easy-to-read manner might also be useful.
  - **Convenient, Sensible Classes and Categories**: **LTKit** will provide convenient, logical extensions to the `UIKit` and `Foundation` frameworks for dealing with common tasks and for reducing lengthy syntax in certain contexts.

## License ##

Copyright 2010-2111 Michael Shannon Potter

LucasTizma  
[www.lucastizma.com][3]  
[lucastizma@lucastizma.com][4] (E-mail/AIM)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0][5]

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

  [3]: http://www.lucastizma.com "www.lucastizma.com"
  [4]: mailto:lucastizma@lucastizma.com "lucastizma@lucastizma.com"
  [5]: http://www.apache.org/licenses/LICENSE-2.0 "http://www.apache.org/licenses/LICENSE-2.0"
  [7]: http://www.stack.nl/~dimitri/doxygen/ "Doxygen"