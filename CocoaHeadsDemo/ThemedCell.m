//
//  ThemedCell.m
//  CocoaHeadsDemo
//
//  Created by Joel Ekström on 2013-10-17.
//  Copyright (c) 2013 FootballAddicts AB. All rights reserved.
//

#import "ThemedCell.h"
#import "Theme.h"

@implementation ThemedCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.textLabel.font = [[Theme currentTheme].mainFont fontWithSize:self.textLabel.font.pointSize];
    self.textLabel.textColor = [Theme currentTheme].mainTextColor;
    
    self.detailTextLabel.font = [[Theme currentTheme].mainFont fontWithSize:self.detailTextLabel.font.pointSize];
    self.detailTextLabel.textColor = [Theme currentTheme].detailTextColor;
    self.backgroundColor = [Theme currentTheme].tableViewCellBackgroundColor;
}

@end
