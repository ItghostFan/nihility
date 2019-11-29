//
//  UIColor+UIKit.m
//  NHLUIKit
//
//  Created by ItghostFan on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "UIColor+UIKit.h"

@implementation UIColor (UIKit)

- (instancetype)initWithHtmlRGBA:(NSString *)rgba {
    rgba = [rgba stringByReplacingOccurrencesOfString:@"#" withString:@""];
    NSScanner *scanner = [NSScanner scannerWithString:rgba];
    uint32_t rgbaHex;
    [scanner scanHexInt:&rgbaHex];
    if (self = [self initWithRed:(rgbaHex >> 24) / 255.0f green:((rgbaHex >> 16) & 0xFF) / 255.0f blue:((rgbaHex >> 8) & 0xFF) / 255.0f alpha:(rgbaHex & 0xFF) / 255.0f]) {
    }
    return self;
}

@end
