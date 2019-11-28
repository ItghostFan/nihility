//
//  NHLElementBackgroundModel.h
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/11/28.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, NHLElementBackgroundImageMode) {
    NHLElementBackgroundImageScaleToFill,
    NHLElementBackgroundImageModeScaleAspectFit,
    NHLElementBackgroundImageModeScaleAspectFill,
};

@interface NHLElementBackgroundModel : NSObject

@property (strong, nonatomic) NSString *backgroundColor;            // @see "rgba()"
@property (strong, nonatomic) NSString *backgroundImage;            // @see "LifeBook/Images/xxxx.png"
@property (strong, nonatomic) NSNumber *backgroundImageMode;        // @see NHLElementBackgroundImageMode

@end

NS_ASSUME_NONNULL_END
