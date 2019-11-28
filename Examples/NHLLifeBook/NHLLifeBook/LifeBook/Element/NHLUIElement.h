//
//  NHLUIElement.h
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class NHLElementFrameModel;
@class NHLElementBackgroundModel;

typedef NSString NHLElementObjectName;

@interface NHLUIElement : UIView

@property (weak, nonatomic) id view;

@property (strong, nonatomic) NSString *objectName;
@property (weak, nonatomic) NSString *superName;
@property (strong, nonatomic) NHLElementFrameModel *frameModel;
@property (strong, nonatomic) NHLElementBackgroundModel *backgroundModel;

@end

NS_ASSUME_NONNULL_END
