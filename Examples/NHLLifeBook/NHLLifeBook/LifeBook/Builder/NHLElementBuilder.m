//
//  NHLElementBuilder.m
//  NHLLifeBook
//
//  Created by ItghostFan on 2019/11/27.
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
