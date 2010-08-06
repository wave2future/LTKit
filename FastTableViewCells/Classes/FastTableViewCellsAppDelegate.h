//
//  FastTableViewCellsAppDelegate.h
//  FastTableViewCells
//
//  Created by Michael Shannon Potter on 8/6/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface FastTableViewCellsAppDelegate : NSObject <UIApplicationDelegate> {

    UIWindow *window;

    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;


@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@end

