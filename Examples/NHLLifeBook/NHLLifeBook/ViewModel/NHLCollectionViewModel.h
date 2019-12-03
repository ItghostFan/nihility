//
//  NHLCollectionViewModel.h
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/12/3.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NHLCollectionViewModel : NSObject <UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>

@property (strong, nonatomic, readonly) NSDictionary<__kindof NSString *, __kindof Class> *cellPrototypes;
@property (weak, nonatomic) UICollectionView *collectionView;

#pragma mark - delegate

- (void)viewModel:(NHLCollectionViewModel *)viewModel didSelectedIndexPath:(NSIndexPath *)indexPath
            model:(id<NSObject> __nullable)model;

@end

NS_ASSUME_NONNULL_END
