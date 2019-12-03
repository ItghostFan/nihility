//
//  NHLTableViewModel.h
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/12/3.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NHLTableViewModel : NSObject <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic, readonly) NSDictionary<__kindof NSString *, __kindof Class> *cellPrototypes;
@property (weak, nonatomic) UITableView *tableView;

#pragma mark - delegate

- (void)viewModel:(NHLTableViewModel *)viewModel didSelectedIndexPath:(NSIndexPath *)indexPath
            model:(id<NSObject> __nullable)model;

@end

NS_ASSUME_NONNULL_END
