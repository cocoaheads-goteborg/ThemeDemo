//
//  Theme.m
//  CocoaHeadsDemo
//
//  Created by Joel Ekström on 2013-10-16.
//  Copyright (c) 2013 FootballAddicts AB. All rights reserved.
//

#import "Theme.h"
#import "DefaultTheme.h"

@implementation Theme

/**
 Loads the latest selected theme from user defaults, or if none is saved, uses the default
 theme.
 */
static Theme *CurrentTheme;
+ (Theme *)currentTheme
{
    if (CurrentTheme == nil) {
        
        NSString *themeName = [[NSUserDefaults standardUserDefaults] objectForKey:@"currentTheme"];
        if (!themeName) {
            themeName = @"DefaultTheme";
        }
        
        CurrentTheme = [[NSClassFromString(themeName) alloc] init];
    }
    return CurrentTheme;
}

/**
 Sets the current theme and saves it to user defaults.
 */
+ (void)setCurrentTheme:(Theme *)theme
{
    if (CurrentTheme != theme) {
        CurrentTheme = theme;
        [CurrentTheme applyAppearance];
        
        NSString *identifier = NSStringFromClass([theme class]);
        [[NSUserDefaults standardUserDefaults] setObject:identifier forKey:@"currentTheme"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

/**
 Uses the iOS appearance api's to set global style, for example in navigation bars
 */
- (void)applyAppearance
{
    [[UIView appearance] setTintColor:self.globalTintColor];
    [[UINavigationBar appearance] setBarTintColor:self.navigationBarTintColor];
    [[UINavigationBar appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName: self.mainTextColor,
                                                            NSFontAttributeName: self.mainFont }];
    [[UIBarButtonItem appearance] setTitleTextAttributes:@{ NSFontAttributeName: self.mainFont } forState:UIControlStateNormal];
}

- (UIImage *)imageNamed:(NSString *)imageName
{
    return [UIImage imageNamed:imageName];
}

@end
