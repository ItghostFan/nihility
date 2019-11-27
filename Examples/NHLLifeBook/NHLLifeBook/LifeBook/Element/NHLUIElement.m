//
//  NHLUIElement.m
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "NHLUIElement.h"

@implementation NHLUIElement

- (void)setView:(id)view {
    _view = view;
    [self addSubview:view];
}

@end
