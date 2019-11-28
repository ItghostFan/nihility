//
//  NHLUIPage.h
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "NHLUIElement.h"

NS_ASSUME_NONNULL_BEGIN

@interface NHLUIPage : NHLUIElement

@property (strong, nonatomic) NSMutableDictionary<__kindof NHLElementObjectName *, __kindof NHLUIElement *> *subelements;

@end

NS_ASSUME_NONNULL_END
