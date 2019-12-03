//
//  NHLTableViewCell.m
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/12/3.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "NHLTableViewCell.h"

@implementation NHLTableViewCell

- (void)prepareForReuse {
    [super prepareForReuse];
    self.model = nil;
}

+ (CGSize)cellSize {
    return CGSizeZero;
}

@end
