//
//  NHLUIBuilder.h
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NHLUIBuilder : NSObject

+ (__weak UIView *)viewBuilder:(UIView *(^ __nullable)(UIView *superview))builder
               makeConstraints:(void(NS_NOESCAPE ^ __nullable)(MASConstraintMaker *make))makeConstraints
                     superview:(UIView *)superview
                     prototype:(Class)prototype;

@end

#define NHLUIBuild(builder, cls, layout, parent) ((cls *)[NHLUIBuilder viewBuilder:builder \
makeConstraints:layout \
superview:parent \
prototype:cls.class])

NS_ASSUME_NONNULL_END
