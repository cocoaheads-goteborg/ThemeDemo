//
//  AppDelegate.m
//  CocoaHeadsDemo
//
//  Created by Joel Ekström on 2013-10-16.
//  Copyright (c) 2013 FootballAddicts AB. All rights reserved.
//

#import "AppDelegate.h"
#import "Theme.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //
    // Apply the last selected theme
    //
    [[Theme currentTheme] applyAppearance];
    
    return YES;
}
							
@end
