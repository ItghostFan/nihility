//
//  NHLElementViewModel.m
//  NHLLifeBook
//
//  Created by FanChunxing on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "NHLElementViewModel.h"

@interface NHLElementViewModel ()
@end

@implementation NHLElementViewModel

- (void)setModels:(NSMutableArray<__kindof NSMutableArray *> *)models {
    _models = models;
}

- (void)setTableView:(UITableView *)tableView {
    _tableView = tableView;
}

#pragma mark - UITableViewDataSource

#pragma mark - UITableViewDelegate

@end
