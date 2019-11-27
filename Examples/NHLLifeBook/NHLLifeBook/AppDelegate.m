//
//  AppDelegate.m
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/11/20.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "AppDelegate.h"

#import "NHLMakeBookViewModel.h"
#import "NHLMakeBookController.h"

@interface AppDelegate ()
@property (strong, nonatomic) UIWindow *keyWindow;
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.keyWindow = [UIWindow new];
    NHLMakeBookController *controller = [[NHLMakeBookController alloc] initWithViewModel:[NHLMakeBookViewModel new]];
    self.keyWindow.rootViewController = controller;
    [self.keyWindow makeKeyAndVisible];
    return YES;
}

@end
