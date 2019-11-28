//
//  UIColor+UIKit.m
//  NHLUIKit
//
//  Created by FanChunxing on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "UIColor+UIKit.h"

@implementation UIColor (UIKit)

+ (instancetype)colorWithRGBAString:(NSString *)rgba {
    NSScanner *scanner = [NSScanner scannerWithString:rgba];
    uint32_t r;
    uint32_t g;
    uint32_t b;
    uint32_t a = 255.0f;
    [scanner scanHexInt:&r];
    [scanner scanHexInt:&g];
    [scanner scanHexInt:&b];
    [scanner scanHexInt:&a];
    return [UIColor colorWithRed:r / 255.0f green:g / 255.0f blue:b / 255.0f alpha:a / 255.0f];
}

@end
