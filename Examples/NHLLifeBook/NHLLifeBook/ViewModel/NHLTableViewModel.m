//
//  NHLTableViewModel.m
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/12/3.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "NHLTableViewModel.h"

@implementation NHLTableViewModel

- (void)setTableView:(UITableView *)tableView {
    _tableView = tableView;
    [self.cellPrototypes enumerateKeysAndObjectsUsingBlock:^(__kindof NSString * _Nonnull key, __kindof Class  _Nonnull obj, BOOL * _Nonnull stop) {
        [tableView registerClass:obj forCellReuseIdentifier:key];
    }];
    tableView.dataSource = self;
    tableView.delegate = self;
}

#pragma mark - UITableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self viewModel:self didSelectedIndexPath:indexPath model:nil];
}

#pragma mark - delegate

- (void)viewModel:(NHLTableViewModel *)viewModel didSelectedIndexPath:(NSIndexPath *)indexPath
            model:(id<NSObject>)model {
}

@end
