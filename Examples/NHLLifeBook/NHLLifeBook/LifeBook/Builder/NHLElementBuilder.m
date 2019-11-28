//
//  NHLElementBuilder.m
//  NHLLifeBook
//
//  Created by FanChunxing on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import "NHLElementBuilder.h"

#import "NHLUIElement.h"

@interface NHLElementBuilder ()
@property (strong, nonatomic) NSDictionary *elementBuilder;
@end

@implementation NHLElementBuilder

- (instancetype)init {
    if (self = [super init]) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"ElementBuilder" ofType:@"plist"];
        self.elementBuilder = [NSDictionary dictionaryWithContentsOfURL:[NSURL URLWithString:path]];
    }
    return self;
}

- (NHLUIElement *)buildElement:(NSString *)element attributes:(NSDictionary *)attributes {
    NSAssert(element, @"element is null!");
    NHLUIElement *uiElement = [NHLUIElement new];
#ifdef DEBUG
    NSMutableDictionary *colors = [NSMutableDictionary new];
    colors[@0] = COLOR_RGB(0x7FFFD4);
    colors[@1] = COLOR_RGB(0xF5F5DC);
    colors[@2] = COLOR_RGB(0xDEB887);
    colors[@3] = COLOR_RGB(0x6495ED);
    colors[@4] = COLOR_RGB(0x008B8B);
    colors[@5] = COLOR_RGB(0xE9967A);
    colors[@6] = COLOR_RGB(0x1E90FF);
    colors[@7] = COLOR_RGB(0xADFF2F);
    colors[@8] = COLOR_RGB(0xE6E6FA);
    colors[@9] = COLOR_RGB(0x87CEFA);
    uiElement.backgroundColor = colors[@(random() % 10)];
#endif
    NSString *meta = self.elementBuilder[element];
    if (meta) {
        Class metaClass = NSClassFromString(meta);
        NSAssert(metaClass, ({[NSString stringWithFormat:@"element %@ not found!", element];}));
        if (metaClass) {
            UIView *view = [metaClass new];;
            uiElement.view = view;
            [view mas_makeConstraints:^(MASConstraintMaker *make) {
                make.edges.mas_equalTo(UIEdgeInsetsZero);
            }];
        }
    }
    return uiElement;
}

@end
