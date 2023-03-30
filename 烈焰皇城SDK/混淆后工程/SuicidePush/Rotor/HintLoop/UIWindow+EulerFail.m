
#import "NSString+Scruffy.h"








#import "UIWindow+EulerFail.h"
#import <objc/message.h>

static NSMutableArray * clickArray;

@implementation UIWindow (EulerFail)

+ (void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        clickArray = [NSMutableArray array];
        [self filmBeforeGram];
    });
}

+ (void)filmBeforeGram{
    SEL originalSelector = @selector(hitTest:withEvent:);
    SEL exchangeSelector = @selector(nonceSeed:withEvent:);
    Method originalMethod = class_getInstanceMethod(UIWindow.class, originalSelector);
    Method filmBeforeGram = class_getInstanceMethod(UIWindow.class, exchangeSelector);
    BOOL is_exchange = class_addMethod(UIWindow.class, originalSelector, method_getImplementation(filmBeforeGram), method_getTypeEncoding(filmBeforeGram));
    if (is_exchange) {
        class_replaceMethod(UIWindow.class, exchangeSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, filmBeforeGram);
    }
}

- (UIView *)nonceSeed:(CGPoint)point withEvent:(UIEvent *)event{
    [self metalEasyTouch:point withEvent:event];
    return [self nonceSeed:point withEvent:event];
}

-(void)metalEasyTouch:(CGPoint) point withEvent: (UIEvent*) event{
    
    if (CGSizeEqualToSize(self.bounds.size, [UIScreen mainScreen].bounds.size)) {
        [self ageSpaNotSheet:point];
    }
}

- (void)ageSpaNotSheet:(CGPoint) point {
    [clickArray addObject:@{
        
        @"UGFyYW1Y".relishKhaki: [NSString stringWithFormat:@"JWQ=".relishKhaki, (int)point.x],
       @"UGFyYW1Z".relishKhaki : [NSString stringWithFormat:@"JWQ=".relishKhaki, (int)point.y],
        @"UGFyYW1UaW1l".relishKhaki: @((long long)[[NSDate date] timeIntervalSince1970])
    }];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (clickArray.count > 0) {
            [self bounceReset];
        }
    });
}
- (void)bounceReset{
    //上报接口
    if (true) {
     
        
    }
    [clickArray removeAllObjects];
}

@end
