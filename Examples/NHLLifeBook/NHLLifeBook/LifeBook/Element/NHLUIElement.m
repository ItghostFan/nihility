//
//  NHLUIElement.m
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "NHLUIElement.h"

#import "NHLElementFrameModel.h"
#import "NHLElementBackgroundModel.h"

@implementation NHLUIElement

- (void)setView:(id)view {
    _view = view;
    [self addSubview:view];
}

- (void)setFrameModel:(NHLElementFrameModel *)frameModel {
    _frameModel = frameModel;
    @weakify(self);
    [[RACSignal combineLatest:@[
        RACObserve(frameModel, left),
        RACObserve(frameModel, top),
        RACObserve(frameModel, width),
        RACObserve(frameModel, height)
    ]] subscribeNext:^(RACTuple *tuple) {
        RACTupleUnpack(
        NSNumber *left,
        NSNumber *top,
        NSNumber *width,
        NSNumber *height)
        = tuple;
        @strongify(self);
        self.frame = CGRectMake(left.floatValue, top.floatValue, width.floatValue, height.floatValue);
    }];
}

- (void)setBackgroundModel:(NHLElementBackgroundModel *)backgroundModel {
    _backgroundModel = backgroundModel;
    @weakify(self);
    [[RACSignal combineLatest:@[
        RACObserve(backgroundModel, backgroundColor),
        RACObserve(backgroundModel, backgroundImage),
        RACObserve(backgroundModel, backgroundImageMode),
    ]] subscribeNext:^(RACTuple *tuple) {
        RACTupleUnpack(
        NSString *backgroundColor,
        NSString *backgroundImage,
        NSNumber *backgroundImageMode)
        = tuple;
        @strongify(self);
        self.backgroundColor = [UIColor colorWithRGBAString:backgroundColor];
        
        CALayerContentsGravity gravity;
        switch (backgroundImageMode.integerValue) {
            case NHLElementBackgroundImageModeScaleAspectFit: {
                gravity = kCAGravityResizeAspect;
                break;
            }
            case NHLElementBackgroundImageModeScaleAspectFill: {
                gravity = kCAGravityResizeAspectFill;
                break;
            }
            default: {
                gravity = kCAGravityResize;
                break;
            }
        }
        self.layer.contentsGravity = gravity;
    }];
}

#pragma mark - UIView

- (void)willMoveToSuperview:(UIView *)newSuperview {
    [super willMoveToSuperview:newSuperview];
    if ([newSuperview isKindOfClass:NHLUIElement.class]) {
        self.superName = ((NHLUIElement *)newSuperview).objectName;
    }
}

@end
