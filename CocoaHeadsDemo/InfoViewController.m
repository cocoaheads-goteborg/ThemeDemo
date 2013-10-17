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
    
    UIImage *buttonBackgroundImage = [[Theme currentTheme] imageNamed:@"button"];
    [self.backButton setBackgroundImage:[buttonBackgroundImage resizableImageWithCapInsets:UIEdgeInsetsMake(0, 6, 0, 6)] forState:UIControlStateNormal];
}

- (IBAction)backButtonTapped:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
