//
//  NHLViewModel.h
//  NHLLifeBook
//
//  Created by ItghostFan on 2020/1/20.
//  Copyright © 2020 ItghostFan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NSString NHLViewModelClassName;

@protocol NHLViewModel <NSObject>

@end

@protocol NHLApplicationDelegate <UIApplicationDelegate>

- (id<NHLViewModel>)viewModelOfClass:(Class)cls;
- (id<NHLModule>)moduleOfClass:(Class)cls;

@end

NS_ASSUME_NONNULL_END
