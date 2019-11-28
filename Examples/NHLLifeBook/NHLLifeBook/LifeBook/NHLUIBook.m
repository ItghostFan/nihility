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
        self.pages = [NSMutableArray array];
        self.pageView = NHLUIBuild(UIScrollView, ^(MASConstraintMaker * _Nonnull make) {
            make.edges.mas_equalTo(UIEdgeInsetsZero);
        }, self);
    }
    return self;
}

- (void)addPage:(NHLUIPage *)page {
}

#pragma mark - getter

#pragma mark - setter

- (void)setFrameModel:(NHLElementFrameModel *)frameModel {
    _frameModel = frameModel;
}

@end
