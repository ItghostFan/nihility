//
//  AppDelegate.m
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/11/20.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "AppDelegate.h"

#import "AppMain.h"
#import "AppSegue.h"

@interface AppDelegate ()
@property (nonatomic, strong) NSMutableDictionary<__kindof NHLModuleClassName *, __kindof id<NHLModule>> *modules;
@end

@implementation AppDelegate

- (instancetype)init {
    if (self = [super init]) {
        self.modules = [NSMutableDictionary new];
    }
    return self;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

#pragma mark - NHLApplicationDelegate

- (id<NHLViewModel>)viewModelOfClass:(Class)cls {
    id<NHLModule> module = self.modules[NSStringFromClass(AppMain.class)];
    return [module viewModelOfClass:cls];
}

- (id<NHLModule>)moduleOfClass:(Class)cls {
    return self.modules[NSStringFromClass(cls)];
}

@end
