//
//  DarkTheme.m
//  CocoaHeadsDemo
//
//  Created by Joel Ekström on 2013-10-16.
//  Copyright (c) 2013 FootballAddicts AB. All rights reserved.
//

#import "DarkTheme.h"

@implementation DarkTheme

- (id)init
{
    self = [super init];
    if (self) {
        self.mainFont = [UIFont fontWithName:@"GillSans" size:17.0];
        self.mainTextColor = [UIColor whiteColor];
        self.detailTextColor = [UIColor grayColor];
        self.globalBackgroundColor = [UIColor blackColor];
        self.tableViewCellBackgroundColor = [UIColor darkGrayColor];
        self.navigationBarTintColor = [UIColor blackColor];
        self.globalTintColor = [UIColor greenColor];
    }
    return self;
}

@end
