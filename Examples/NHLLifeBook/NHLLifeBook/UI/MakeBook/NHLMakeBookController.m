//
//  NHLMakeBookController.m
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "NHLMakeBookController.h"

#import "UIColor+UIKit.h"
#import "NHLMakeBookViewModel.h"
#import "NHLUIPage.h"
#import "NHLElementFrameModel.h"
#import "NHLUIBook.h"

@interface NHLMakeBookController ()
@property (strong, nonatomic) NHLMakeBookViewModel *viewModel;
@property (weak, nonatomic) NHLUIBook *uiBook;
@end

@implementation NHLMakeBookController

- (instancetype)initWithViewModel:(NHLMakeBookViewModel *)viewModel {
    if (self = [super init]) {
        [self bindViewModel:viewModel];
    }
    return self;
}

- (void)bindViewModel:(NHLMakeBookViewModel *)viewModel {
    self.viewModel = viewModel;
    @weakify(self);
    self.uiBook = NHLUIBuild(NHLUIBook, ^(MASConstraintMaker *make) {
        @strongify(self);
        make.left.right.equalTo(self.view);
        if (@available(iOS 11.0, *)) {
            make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop);
            make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom);
        } else {
            make.top.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }
    }, self.view);
    self.uiBook.frameModel = [NHLElementFrameModel new];
    self.uiBook.frameModel.width = @(1920.0f);
    self.uiBook.frameModel.height = @(1080.0f);
//    self.uiBook.frameModel.width = @(1280);
//    self.uiBook.frameModel.height = @(720.0f);
    [self.uiBook addPage:[NHLUIPage new]];
    [self.uiBook addPage:[NHLUIPage new]];
}

#pragma mark - make business

@end
