//
//  FastTableViewCellsAppDelegate.m
//  FastTableViewCells
//
//  Created by Michael Shannon Potter on 8/6/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//


#import "FastTableViewCellsAppDelegate.h"

@implementation FastTableViewCellsAppDelegate


@synthesize window;

@synthesize navigationController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Override point for customization after application launch.
    // Add the navigation controller's view to the window and display.
    [window addSubview:navigationController.view];
    [window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {

    // Save data if appropriate.
}

- (void)dealloc {

    [window release];
    [navigationController release];
    [super dealloc];
}

@end

