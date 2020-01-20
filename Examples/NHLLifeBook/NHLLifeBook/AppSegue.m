//
//  AppSegue.m
//  NHLLifeBook
//
//  Created by ItghostFan on 2020/1/20.
//  Copyright © 2020 ItghostFan. All rights reserved.
//

#import "AppSegue.h"

#import "NHLNavigationController.h"
#import "NHLLocalBookViewModel.h"
#import "NHLLocalBookController.h"

@interface AppSegue ()
@property (strong, nonatomic) UIWindow *keyWindow;
@end

@implementation AppSegue

- (void)display {
    self.keyWindow = [UIWindow new];
    NHLNavigationController *rootController = [NHLNavigationController new];
    self.keyWindow.rootViewController = rootController;
    [rootController pushViewController:[[NHLLocalBookController alloc] initWithViewModel:[NHLLocalBookViewModel new]] animated:NO];
    [self.keyWindow makeKeyAndVisible];
}

@end
