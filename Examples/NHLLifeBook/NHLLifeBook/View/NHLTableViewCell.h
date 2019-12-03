//
//  NHLTableViewCell.h
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/12/3.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NHLTableViewCell : UITableViewCell

@property (weak, nonatomic) id<NSObject> model;

+ (CGSize)cellSize;

@end

NS_ASSUME_NONNULL_END
