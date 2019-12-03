//
//  NHLMakeBookPanelViewModel.m
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/12/3.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "NHLMakeBookPanelViewModel.h"

#import "NHLMakeBookPanelModel.h"
#import "NHLMakeBookPanelCell.h"

@interface NHLMakeBookPanelViewModel ()
@property (strong, nonatomic) NSMutableArray *models;
@property (strong, nonatomic) NSDictionary<__kindof NSString *, __kindof Class> *cellPrototypes;
@end

@implementation NHLMakeBookPanelViewModel

@synthesize cellPrototypes;

- (instancetype)init {
    if (self = [super init]) {
        NSMutableArray *models = [NSMutableArray new];
        NHLMakeBookPanelModel *model = [NHLMakeBookPanelModel new];
        model.iconName = @"make_book_move";
        model.reuseIdentifier = NSStringFromClass(NHLMakeBookPanelCell.class);
        [models addObject:model];
        self.models = models;
        [RACObserve(self, collectionView) subscribeNext:^(UICollectionView *collectionView) {
            [collectionView reloadData];
        }];
        self.cellPrototypes = @{
            NSStringFromClass(NHLMakeBookPanelCell.class):NHLMakeBookPanelCell.class
        };
    }
    return self;
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.models.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NHLMakeBookPanelModel *model = self.models[indexPath.row];
    return [collectionView dequeueReusableCellWithReuseIdentifier:model.reuseIdentifier forIndexPath:indexPath];
}

#pragma mark - UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return NHLMakeBookPanelCell.cellSize;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [self viewModel:self didSelectedIndexPath:indexPath model:self.models[indexPath.row]];
}

- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath {
    ((NHLMakeBookPanelCell *)cell).model = self.models[indexPath.row];
}

@end
