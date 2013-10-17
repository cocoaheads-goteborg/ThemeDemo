//
//  InfoViewController.m
//  CocoaHeadsDemo
//
//  Created by Joel Ekström on 2013-10-17.
//  Copyright (c) 2013 FootballAddicts AB. All rights reserved.
//

#import "InfoViewController.h"
#import "Theme.h"

@implementation InfoViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.view.backgroundColor = [Theme currentTheme].globalBackgroundColor;
    self.descriptionLabel.textColor = [Theme currentTheme].mainTextColor;
    self.descriptionLabel.font = [[Theme currentTheme].mainFont fontWithSize:13.0];
}

- (IBAction)backButtonTapped:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
