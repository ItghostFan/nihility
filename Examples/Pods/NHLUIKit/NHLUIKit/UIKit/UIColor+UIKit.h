//
//  UIColor+UIKit.h
//  NHLUIKit
//
//  Created by FanChunxing on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 RGB色值

 @param rgb 0xFFFFFF
 @return UIColor
 */
#define COLOR_RGB(rgb) \
[UIColor colorWithRed:(rgb >> 16) / 255.0f green:((rgb >> 8) & 0xFF) / 255.0f blue:(rgb & 0xFF) / 255.0f alpha:(0xFF) / 255.0f]

/**
 RGBA色值
 
 @param rgb 0xFFFFFF00
 @return UIColor
 */
#define COLOR_RGBA(rgba) \
[UIColor colorWithRed:(rgba >> 24) / 255.0f green:((rgba >> 16) & 0xFF) / 255.0f blue:((rgba >> 8) & 0xFF) / 255.0f alpha:(rgba & 0xFF) / 255.0f]

/**
 RGB_A色值
 
 @param rgb 0xFFFFFF
 @param a 0.5f
 @return UIColor
 */
#define COLOR_RGB_A(rgb, a) \
[UIColor colorWithRed:(rgb >> 16) / 255.0f green:((rgb >> 8) & 0xFF) / 255.0f blue:((rgb) & 0xFF) / 255.0f alpha:a]

@interface UIColor (UIKit)

@end

NS_ASSUME_NONNULL_END
