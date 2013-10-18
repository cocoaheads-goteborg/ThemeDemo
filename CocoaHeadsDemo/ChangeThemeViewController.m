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
    //
    // Show a checkmark in the cell with the currently selected theme.
    //
    // Since I used static cells in the storyboard, the cell configuration is handled
    // by the base UITableViewController-class, so I can just call super to get
    // the already configured cell.
    //
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

    //
    // If the user selected another theme than the current, switch to it by creating
    // an instance of the class with the same name as the text in the cell
    //
    NSString *selectedThemeName = cell.textLabel.text;
    if (![selectedThemeName isEqualToString:NSStringFromClass([Theme currentTheme].class)]) {
        Theme *newTheme = [[NSClassFromString(selectedThemeName) alloc] init];
        [self changeToTheme:newTheme];
    }
}

- (void)changeToTheme:(Theme *)newTheme
{
    //
    // Take a snaphshot of the application window as it is now
    //
    UIView *snapshotView = [self.view.window snapshotViewAfterScreenUpdates:NO];
    
    //
    // Tell the theme class to set a new theme as current
    //
    [Theme setCurrentTheme:newTheme];
    
    //
    // Load the first view controller again to make sure all views (for example navigation bars) requiring appearance proxies to be recreated
    //
    UINavigationController *newRootViewController = [self.storyboard instantiateInitialViewController];
    
    //
    // Reset the app by setting the first view controller as root
    //
    self.view.window.rootViewController = newRootViewController;
    
    //
    // To make the transition look good, we need to push a new ChangeThemeViewController, else we would end up on the root screen again
    //
    ChangeThemeViewController *vc =  [self.storyboard instantiateViewControllerWithIdentifier:@"ChangeThemeViewController"];
    [newRootViewController pushViewController:vc animated:NO];
    
    //
    // Add the snapshot above everything and fade it out
    //
    [newRootViewController.view addSubview:snapshotView];
    [UIView animateWithDuration:0.5 animations:^{
        snapshotView.alpha = 0.0;
    } completion:^(BOOL finished) {
        [snapshotView removeFromSuperview];
    }];
}

@end
