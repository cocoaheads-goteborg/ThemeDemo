//
//  ThemedTableViewController.m
//  CocoaHeadsDemo
//
//  Created by Joel Ekström on 2013-10-17.
//  Copyright (c) 2013 FootballAddicts AB. All rights reserved.
//

#import "ThemedTableViewController.h"
#import "Theme.h"

@implementation ThemedTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.backgroundView = [UIView new];
    self.tableView.backgroundView.backgroundColor = [Theme currentTheme].globalBackgroundColor;
}

@end
