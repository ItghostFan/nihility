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

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        #ifdef DEBUG
            NSMutableDictionary *colors = [NSMutableDictionary new];
            colors[@0] = COLOR_RGB(0x7FFFD4);
            colors[@1] = COLOR_RGB(0xF5F5DC);
            colors[@2] = COLOR_RGB(0xDEB887);
            colors[@3] = COLOR_RGB(0x6495ED);
            colors[@4] = COLOR_RGB(0x008B8B);
            colors[@5] = COLOR_RGB(0xE9967A);
            colors[@6] = COLOR_RGB(0x1E90FF);
            colors[@7] = COLOR_RGB(0xADFF2F);
            colors[@8] = COLOR_RGB(0xE6E6FA);
            colors[@9] = COLOR_RGB(0x87CEFA);
            self.backgroundColor = colors[@(random() % 10)];
        #endif
    }
    return self;
}

#pragma mark - setter

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
        self.backgroundColor = COLOR_HTML_RGBA(backgroundColor);
        
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
