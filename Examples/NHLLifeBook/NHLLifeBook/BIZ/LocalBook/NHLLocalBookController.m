//
//  NHLLocalBookController.m
//  NHLLifeBook
//
//  Created by ItghostFan on 2020/1/20.
//  Copyright © 2020 ItghostFan. All rights reserved.
//

#import "NHLLocalBookController.h"

#import "NHLNavigationController.h"
#import "NHLLocalBookViewModel.h"

#pragma message "Itghost Test Begin"
#import "NHLMakeBookViewModel.h"
#import "NHLMakeBookController.h"
#pragma message "Itghost Test End"

@interface NHLLocalBookController ()

@property (strong, nonatomic) NHLLocalBookViewModel *viewModel;
@property (weak, nonatomic) UIButton *addButton;

@end

@implementation NHLLocalBookController

- (instancetype)initWithViewModel:(NHLLocalBookViewModel *)viewModel {
    if (self = [super init]) {
        [self bindViewModel:viewModel];
    }
    return self;
}

- (void)bindViewModel:(NHLLocalBookViewModel *)viewModel {
    self.viewModel = viewModel;
    
    [self makeAddAction];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NHL_LOCALIZED_STRING(@"Local Book", nil);
}

#pragma mark - Action

- (void)makeAddAction {
    @weakify(self);
    self.addButton = NHLUIBuild(^UIView * _Nonnull(UIView * _Nonnull superview) {
        UIButton *button = [UIButton new];
        [button setTitleColor:COLOR_RGB(0x00FF00) forState:UIControlStateNormal];
        [button setTitle:NHL_LOCALIZED_STRING(@"Add", nil) forState:UIControlStateNormal];
        return button;
    }, UIButton, ^(MASConstraintMaker * _Nonnull make) {
        make.left.mas_equalTo(100.0f);
        make.top.mas_equalTo(100.0f);
        make.size.mas_equalTo(CGSizeMake(100.0f, 100.0f));
    }, self.view);
    self.addButton.rac_command = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
        @strongify(self);
        NHLMakeBookController *controller = [[NHLMakeBookController alloc] initWithViewModel:[NHLMakeBookViewModel new]];
        UIWindow *newWindow = [UIWindow new];
        newWindow.rootViewController = controller;
        [newWindow makeKeyAndVisible];
        return [RACSignal return:@YES];
//        return [self.navigationController signalPushViewController:controller
//                                                          animated:YES
//                                                            result:@YES
//                                                          delegate:(id<UINavigationControllerDelegate>)self.addButton];
    }];
}

@end
