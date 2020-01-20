//
//  NHLNavigationController.m
//  NHLLifeBook
//
//  Created by ItghostFan on 2020/1/20.
//  Copyright © 2020 ItghostFan. All rights reserved.
//

#import "NHLNavigationController.h"

@implementation UINavigationController (NHLNavigationController)

- (RACSignal *)didShowViewControllerSignalWithResult:(id)result delegate:(id<UINavigationControllerDelegate>)delegate {
    @weakify(self);
    id<UINavigationControllerDelegate> original = self.delegate;
    self.delegate = delegate;
    return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        [[(NSObject *)delegate rac_signalForSelector:@selector(navigationController:didShowViewController:animated:) fromProtocol:@protocol(UINavigationControllerDelegate)] subscribeNext:^(id x) {
            @strongify(self);
            self.delegate = original;
            [subscriber sendNext:result];
            [subscriber sendCompleted];
        }];
        return nil;
    }];
}

- (RACSignal *)signalPushViewController:(UIViewController *)viewController
                               animated:(BOOL)animated
                                 result:(id)result
                               delegate:(id<UINavigationControllerDelegate>)delegate {
    RACSignal *signal = [self didShowViewControllerSignalWithResult:result delegate:delegate];
    [self pushViewController:viewController animated:animated];
    return signal;
}

@end

@interface NHLNavigationController ()

@end

@implementation NHLNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
}

@end
