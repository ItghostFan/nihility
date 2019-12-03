//
//  NHLUIBook.m
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/11/28.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "NHLUIBook.h"

#import "NHLUIPage.h"
#import "NHLElementFrameModel.h"

@interface NHLUIBook ()
@property (weak, nonatomic) UIScrollView *pageView;
@property (strong, nonatomic) NSMutableArray<__kindof NHLUIPage *> *pages;
@end

@implementation NHLUIBook

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = COLOR_HTML_RGB(@"#00FF00");
        self.pages = [NSMutableArray array];
        self.pageView = NHLUIBuild(nil, UIScrollView, ^(MASConstraintMaker * _Nonnull make) {
            make.edges.mas_equalTo(UIEdgeInsetsZero);
        }, self);
    }
    return self;
}

- (void)addPage:(NHLUIPage *)page {
    CGFloat left = self.pages.count * self.frameModel.width.floatValue;
    CGFloat top = 0.0f;
    CGFloat width = self.frameModel.width.floatValue;
    CGFloat height = self.frameModel.height.floatValue;
    NHLElementFrameModel *frameModel = [NHLElementFrameModel new];
    frameModel.left = @(left);
    frameModel.top = @(top);
    frameModel.width = self.frameModel.width;
    frameModel.height = self.frameModel.height;
    page.frameModel = frameModel;
    [self.pages addObject:page];
    [self.pageView addSubview:page];
    self.pageView.contentSize = CGSizeMake(self.pages.count * width, height);
}

#pragma mark - getter

#pragma mark - setter

- (void)setFrameModel:(NHLElementFrameModel *)frameModel {
    _frameModel = frameModel;
}

@end
