//
//  NHLLocalBookController.h
//  NHLLifeBook
//
//  Created by ItghostFan on 2020/1/20.
//  Copyright © 2020 ItghostFan. All rights reserved.
//

#import "NHLPushController.h"

NS_ASSUME_NONNULL_BEGIN

@class NHLLocalBookViewModel;

@interface NHLLocalBookController : NHLPushController

- (instancetype)initWithViewModel:(NHLLocalBookViewModel *)viewModel;

@end

NS_ASSUME_NONNULL_END
