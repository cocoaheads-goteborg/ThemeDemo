//
//  Theme.h
//  CocoaHeadsDemo
//
//  Created by Joel Ekström on 2013-10-16.
//  Copyright (c) 2013 FootballAddicts AB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Theme : NSObject

+ (Theme *)currentTheme;
+ (void)setCurrentTheme:(Theme *)theme;

- (void)applyAppearance;
- (UIImage *)imageNamed:(NSString *)imageName;

@property (nonatomic, strong) UIFont *mainFont;

@property (nonatomic, strong) UIColor *mainTextColor;
@property (nonatomic, strong) UIColor *detailTextColor;
@property (nonatomic, strong) UIColor *globalBackgroundColor;
@property (nonatomic, strong) UIColor *tableViewCellBackgroundColor;
@property (nonatomic, strong) UIColor *navigationBarTintColor;
@property (nonatomic, strong) UIColor *globalTintColor;

@end
