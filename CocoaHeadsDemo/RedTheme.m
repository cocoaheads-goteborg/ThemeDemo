//
//  RedTheme.m
//  CocoaHeadsDemo
//
//  Created by Joel Ekström on 2013-10-17.
//  Copyright (c) 2013 FootballAddicts AB. All rights reserved.
//

#import "RedTheme.h"

@implementation RedTheme

- (id)init
{
    self = [super init];
    if (self) {
        self.mainFont = [UIFont fontWithName:@"Arial" size:15.0];
        self.mainTextColor = [UIColor blackColor];
        self.globalBackgroundColor = [UIColor redColor];
        self.tableViewCellBackgroundColor = [UIColor orangeColor];
        self.navigationBarTintColor = [UIColor redColor];
        self.globalTintColor = [UIColor yellowColor];
    }
    return self;
}

@end
