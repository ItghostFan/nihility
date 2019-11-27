//
//  NHLElementViewModel.h
//  NHLLifeBook
//
//  Created by FanChunxing on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NHLElementViewModel : NSObject <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSMutableArray<__kindof NSMutableArray *> *models;
@property (weak, nonatomic) UITableView *tableView;

@end

NS_ASSUME_NONNULL_END
