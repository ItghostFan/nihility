//
//  NHLCollectionViewModel.m
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/12/3.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "NHLCollectionViewModel.h"

@implementation NHLCollectionViewModel

- (void)setCollectionView:(UICollectionView *)collectionView {
    _collectionView = collectionView;
    [self.cellPrototypes enumerateKeysAndObjectsUsingBlock:^(__kindof NSString * _Nonnull key, __kindof Class  _Nonnull obj, BOOL * _Nonnull stop) {
        [collectionView registerClass:obj forCellWithReuseIdentifier:key];
    }];
    collectionView.dataSource = self;
    collectionView.delegate = self;
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

#pragma mark - UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeZero;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [self viewModel:self didSelectedIndexPath:indexPath model:nil];
}

- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath {
}

#pragma mark - delegate

- (void)viewModel:(NHLCollectionViewModel *)viewModel didSelectedIndexPath:(NSIndexPath *)indexPath
            model:(id<NSObject>)model {
}

@end
