//
//  NHLElementBuilder.h
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class NHLUIElement;

@interface NHLElementBuilder : NSObject

/// Build element.
/// @param element NSString in EelementBuilder.plist keys.
/// @param attributes Element attributes.
- (NHLUIElement *)buildElement:(NSString *)element attributes:(NSDictionary *)attributes;

@end

NS_ASSUME_NONNULL_END
