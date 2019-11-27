//
//  NHLUIBuilder.m
//  NHLLifeBook
//
//  Created by FanChunxing on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "NHLUIBuilder.h"

@implementation NHLUIBuilder

+ (__weak UIView *)viewMakeConstraints:(void(NS_NOESCAPE ^)(MASConstraintMaker *make))makeConstraints
                             superview:(UIView *)superview
                             metaClass:(Class)metaClass {
    NSAssert([metaClass isKindOfClass:UIView.class], ({[NSString stringWithFormat:@"%@ not UIView class!", metaClass];}));
    UIView *view = [metaClass new];
    if (makeConstraints) {
        [view mas_makeConstraints:makeConstraints];
    }
    return view;
}

@end
