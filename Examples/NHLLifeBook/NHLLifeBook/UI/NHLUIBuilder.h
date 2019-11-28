//
//  NHLUIBuilder.h
//  NHLLifeBook
//
//  Created by FanChunxing on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NHLUIBuilder : NSObject

+ (__weak UIView *)viewMakeConstraints:(void(NS_NOESCAPE ^)(MASConstraintMaker *make))makeConstraints
                             superview:(UIView *)superview
                             metaClass:(Class)metaClass;

@end

#define NHLUIBuild(cls, makeConstraints, parent) ((cls *)[NHLUIBuilder viewMakeConstraints:makeConstraints \
superview:parent \
metaClass:cls.class])

NS_ASSUME_NONNULL_END
