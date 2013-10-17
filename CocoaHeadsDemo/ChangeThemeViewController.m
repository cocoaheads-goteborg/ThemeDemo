//
//  ChangeThemeViewController.m
//  CocoaHeadsDemo
//
//  Created by Joel Ekström on 2013-10-16.
//  Copyright (c) 2013 FootballAddicts AB. All rights reserved.
//

#import "ChangeThemeViewController.h"
#import "Theme.h"

@implementation ChangeThemeViewController

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Show a checkmark in the cell with the currently selected theme
    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    if ([cell.textLabel.text isEqualToString:NSStringFromClass([Theme currentTheme].class)]) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSString *selectedThemeName = cell.textLabel.text;

    // If the user selected another theme than the current, switch to it
    if (![selectedThemeName isEqualToString:NSStringFromClass([Theme currentTheme].class)]) {
        Theme *newTheme = [[NSClassFromString(selectedThemeName) alloc] init];
        [self changeToTheme:newTheme];
    }
}

- (void)changeToTheme:(Theme *)newTheme
{
    // Tell the theme class to set a new theme as current
    [Theme setCurrentTheme:newTheme];
    
    // Load the first view controller again to make sure all appearance methods are reloaded
    UINavigationController *newRootViewController = [self.storyboard instantiateInitialViewController];
    
    // Reset the app by setting the first view controller as root
    self.view.window.rootViewController = newRootViewController;
}

@end
