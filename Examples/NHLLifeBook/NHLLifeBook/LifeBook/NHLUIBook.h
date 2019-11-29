//
//  NHLUIBook.h
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/11/28.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class NHLUIPage;
@class NHLElementFrameModel;

@interface NHLUIBook : UIView

@property (strong, nonatomic) NHLElementFrameModel *frameModel;

- (void)addPage:(NHLUIPage *)page;

@end

NS_ASSUME_NONNULL_END
