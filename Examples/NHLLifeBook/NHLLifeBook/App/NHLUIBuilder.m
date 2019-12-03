//
//  NHLUIBuilder.m
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "NHLUIBuilder.h"

@implementation NHLUIBuilder

+ (__weak UIView *)viewBuilder:(UIView *(^ __nullable)(UIView *superview))builder
               makeConstraints:(void(NS_NOESCAPE ^ __nullable)(MASConstraintMaker *make))makeConstraints
               superview:(UIView *)superview
               prototype:(Class)prototype {
    NSAssert([prototype isSubclassOfClass:UIView.class], ({[NSString stringWithFormat:@"%@ not UIView class!", prototype];}));
    UIView *view;
    if (!builder) {
        view = [prototype new];
    } else {
        view = builder(superview);
    }
    [superview addSubview:view];
    if (makeConstraints) {
        [view mas_makeConstraints:makeConstraints];
    }
    return view;
}

@end
