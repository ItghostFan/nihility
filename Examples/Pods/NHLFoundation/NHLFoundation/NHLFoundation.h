//
//  NHLFoundation.h
//  NHLFoundation
//
//  Created by ItghostFan on 2019/11/27.
//  Copyright © 2019 ItghostFan. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wstrict-prototypes"
#import "ReactiveCocoa/ReactiveCocoa.h"
#import "ReactiveCocoa/RACDelegateProxy.h"

#undef RACObserve
#define RACObserve(TARGET, KEYPATH) \
({ \
__weak id target_=(TARGET); \
[target_ rac_valuesForKeyPath:@keypath(TARGET, KEYPATH) observer:self]; \
})

#pragma clang diagnostic pop

#undef rac_keywordify
#if DEBUG
#define rac_keywordify autoreleasepool {}
#else
#define rac_keywordify 0;
#endif

#undef weakify
#define weakify(...) \
rac_keywordify \
metamacro_foreach_cxt(rac_weakify_,, __weak, __VA_ARGS__)

#undef strongify
#define strongify(...) \
rac_keywordify \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Wshadow\"") \
metamacro_foreach(rac_strongify_,, __VA_ARGS__) \
_Pragma("clang diagnostic pop")



#define UN_USED_OBJ(index, context, object) \
(void)object;

#define UN_USED(...) \
metamacro_foreach_cxt(UN_USED_OBJ, , , __VA_ARGS__)

@interface NHLFoundation : NSObject

@end
