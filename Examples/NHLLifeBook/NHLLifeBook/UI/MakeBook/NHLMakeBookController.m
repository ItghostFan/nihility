//
//  NHLMakeBookController.m
//  NHLLifeBook
//
//  Created by FanChunxing on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "NHLMakeBookController.h"

#import "NHLMakeBookViewModel.h"

@interface NHLMakeBookController ()
@property (strong, nonatomic) NHLMakeBookViewModel *viewModel;
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
    self.view.backgroundColor = [UIColor redColor];
}

@end
