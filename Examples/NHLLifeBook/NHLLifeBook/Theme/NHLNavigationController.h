//
//  NHLNavigationController.h
//  NHLLifeBook
//
//  Created by ItghostFan on 2020/1/20.
//  Copyright © 2020 ItghostFan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (NHLNavigationController)

/// 单次订阅下次弹出的controller的didShowViewController
/// @param result result 调用者期待信号的结果
/// @param delegate delegate 响应didShowViewController的delegate
- (RACSignal *)didShowViewControllerSignalWithResult:(id)result delegate:(id<UINavigationControllerDelegate>)delegate;


/// 弹出viewController，并在viewController didShowViewController时，单次触发信号
/// @param viewController 弹出的控制器
/// @param animated 是否需要显示动画
/// @param result 调用者期待信号的结果
/// @param delegate 响应didShowViewController的delegate
- (RACSignal *)signalPushViewController:(UIViewController *)viewController
                               animated:(BOOL)animated
                                 result:(id)result
                               delegate:(id<UINavigationControllerDelegate>)delegate;

@end

@interface NHLNavigationController : UINavigationController

@end

NS_ASSUME_NONNULL_END
