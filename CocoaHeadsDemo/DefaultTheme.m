//
//  DefaultTheme.m
//  CocoaHeadsDemo
//
//  Created by Joel Ekström on 2013-10-16.
//  Copyright (c) 2013 FootballAddicts AB. All rights reserved.
//

#import "DefaultTheme.h"

@implementation DefaultTheme

- (id)init
{
    self = [super init];
    if (self) {
        self.mainTextColor = [UIColor blackColor];
        self.detailTextColor = [UIColor grayColor];
        self.tableViewBackgroundColor = [UIColor groupTableViewBackgroundColor];
        self.tableViewCellBackgroundColor = [UIColor whiteColor];
        self.navigationBarTintColor = [UIColor whiteColor];
    }
    return self;
}

@end
