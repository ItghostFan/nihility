//
//  NHLModule.h
//  NHLLifeBook
//
//  Created by ItghostFan on 2020/1/20.
//  Copyright © 2020 ItghostFan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NSString NHLModuleClassName;

@protocol NHLViewModel;

@protocol NHLModule <NSObject>

@optional

- (void)addViewModel:(id<NHLViewModel>)viewModel;
- (void)removeViewModel:(id<NHLViewModel>)viewModel;
- (id<NHLViewModel>)viewModelOfClass:(Class)cls;

@end

NS_ASSUME_NONNULL_END
