//
//  NHLCollectionViewCell.m
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/12/3.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "NHLCollectionViewCell.h"

@implementation NHLCollectionViewCell

- (void)prepareForReuse {
    [super prepareForReuse];
    self.model = nil;
}

+ (CGSize)cellSize {
    return CGSizeZero;
}

@end
