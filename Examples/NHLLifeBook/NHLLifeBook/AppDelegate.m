//
//  AppDelegate.m
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/11/20.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (strong, nonatomic) UIWindow *keyWindow;
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.keyWindow = [UIWindow new];
    self.keyWindow.rootViewController = [UIViewController new];
    self.keyWindow.rootViewController.view.backgroundColor = UIColor.redColor;
    [self.keyWindow makeKeyAndVisible];
    return YES;
}

@end
