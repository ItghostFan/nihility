//
//  NHLElementViewModel.m
//  NHLLifeBook
//
//  Created by FanChunxing on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "NHLElementViewModel.h"

#import "NHLElementFrameCell.h"

@interface NHLElementViewModel ()
@end

@implementation NHLElementViewModel

- (void)setModels:(NSMutableArray<__kindof NSMutableArray *> *)models {
    _models = models;
}

- (void)setTableView:(UITableView *)tableView {
    _tableView = tableView;
    [tableView registerClass:NHLElementFrameCell.class forCellReuseIdentifier:NSStringFromClass(NHLElementFrameCell.class)];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.models.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(NHLElementFrameCell.class)];
}

#pragma mark - UITableViewDelegate

@end
