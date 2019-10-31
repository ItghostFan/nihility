//
//  AppDelegate.m
//  NHLThread
//
//  Created by FanChunxing on 2019/10/31.
//  Copyright © 2019 FanChunxing. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [UIWindow new];
    UINavigationController *rootViewController = [UINavigationController new];
    self.window.rootViewController = rootViewController;
    [rootViewController pushViewController:[ViewController new] animated:NO];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
