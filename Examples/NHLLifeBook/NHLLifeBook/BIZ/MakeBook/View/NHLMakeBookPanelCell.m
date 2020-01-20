//
//  NHLMakeBookPanelCell.m
//  NHLLifeBook
//
//  Created by FanChunxing on 2019/12/3.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "NHLMakeBookPanelCell.h"

#import "NHLMakeBookPanelModel.h"

@interface NHLMakeBookPanelCell ()
@property (weak, nonatomic) UIImageView *iconView;
@end

@implementation NHLMakeBookPanelCell

- (void)setModel:(NHLMakeBookPanelModel *)model {
    [super setModel:model];
    self.iconView.image = [UIImage imageNamed:model.iconName];
}

- (UIImageView *)iconView {
    if (!_iconView) {
        @weakify(self);
        _iconView = NHLUIBuild(nil, UIImageView, ^(MASConstraintMaker * _Nonnull make) {
            @strongify(self);
            make.size.mas_equalTo([NHLMakeBookPanelCell cellSize]);
            make.centerX.top.equalTo(self.contentView);
        }, self.contentView);
        _iconView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _iconView;
}

+ (CGSize)cellSize {
    return CGSizeMake(40.0f, 40.0f);
}

@end
