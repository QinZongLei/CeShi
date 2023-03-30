
#import "NSString+Scruffy.h"








#import "DryTapSafeToast.h"

@implementation DryTapSafeToast

static UIView *toastView = nil;
+ (UIView *)leapDogToastView {
    @synchronized(self) {
        if (toastView == nil) {
            toastView = [[UIView alloc] init];
            toastView.backgroundColor = [UIColor darkGrayColor];
            toastView.layer.masksToBounds = YES;
            toastView.layer.cornerRadius = 5.0;
            toastView.alpha = 0;
            
            UIActivityIndicatorView *indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
            indicatorView.tag = 10;
            indicatorView.hidesWhenStopped = YES;
            indicatorView.color = [UIColor whiteColor];
            [toastView addSubview:indicatorView];
        }
        return toastView;
    }
}

static UILabel *toastLabel = nil;
+ (UILabel *)optResponderLabel {
    @synchronized(self) {
        if (toastLabel == nil) {
            toastLabel = [[UILabel alloc] init];
            toastLabel.backgroundColor = [UIColor darkGrayColor];
            toastLabel.font = [UIFont systemFontOfSize:16];
            toastLabel.textColor = [UIColor whiteColor];
            toastLabel.numberOfLines = 0;
            toastLabel.textAlignment = NSTextAlignmentCenter;
            toastLabel.lineBreakMode = NSLineBreakByCharWrapping;
            toastLabel.layer.masksToBounds = YES;
            toastLabel.layer.cornerRadius = 5.0;
            toastLabel.alpha = 0;
        }
        return toastLabel;
    }
}

static UIView *toastViewLabel = nil;
+ (UIView *)stoodOuterAccountsDitheredStepLabel {
    @synchronized(self) {
        if (toastViewLabel == nil) {
            toastViewLabel = [[UIView alloc] init];
            toastViewLabel.backgroundColor = [UIColor darkGrayColor];
            toastViewLabel.layer.masksToBounds = YES;
            toastViewLabel.layer.cornerRadius = 5.0;
            toastViewLabel.alpha = 0;
            
            UIActivityIndicatorView *indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
            indicatorView.tag = 10;
            indicatorView.hidesWhenStopped = YES;
            indicatorView.color = [UIColor whiteColor];
            [toastViewLabel addSubview:indicatorView];
            
            UILabel *aLabel = [[UILabel alloc] init];
            aLabel.tag = 11;
            aLabel.backgroundColor = toastViewLabel.backgroundColor;
            aLabel.font = [UIFont systemFontOfSize:16];
            aLabel.textColor = [UIColor whiteColor];
            aLabel.textAlignment = NSTextAlignmentCenter;
            aLabel.lineBreakMode = NSLineBreakByCharWrapping;
            aLabel.layer.masksToBounds = YES;
            aLabel.layer.cornerRadius = 5.0;
            aLabel.numberOfLines = 0;
            [toastViewLabel addSubview:aLabel];
        }
        return toastViewLabel;
    }
}

//显示菊花
+ (void)leaveMildAction
{
    dispatch_async(dispatch_get_main_queue(), ^{
        if ([[NSThread currentThread] isMainThread]) {
            toastView = [self leapDogToastView];
            [toastView removeFromSuperview];
            UIWindow *window = [UIApplication sharedApplication].delegate.window;
            [window addSubview:toastView];
            
            CGFloat main_width = [[UIScreen mainScreen] bounds].size.width;
            CGFloat main_height = [[UIScreen mainScreen] bounds].size.height;
            
            UIActivityIndicatorView *indicatorView = [toastView viewWithTag:10];
            indicatorView.center = CGPointMake(70/2, 70/2);
            [indicatorView startAnimating];
            toastView.frame = CGRectMake((main_width-70)/2, (main_height-70)/2, 70, 70);
            toastView.alpha = 1;
        }else{
            dispatch_async(dispatch_get_main_queue(), ^{
                [self leaveMildAction];
            });
            return;
        }
    });
}

//隐藏菊花
+ (void)unsafeWatchAction
{
    dispatch_async(dispatch_get_main_queue(), ^{
        if (toastView) {
            UIActivityIndicatorView *indicatorView = [toastView viewWithTag:10];
            [indicatorView stopAnimating];
            toastView.alpha = 0;
            [toastView removeFromSuperview];
        }
    });
    
}

//默认显示消息-->center
+ (void)leaveMildAction:(NSString *)message
{
    [self warnToast:message location:@"Y2VudGVy".relishKhaki formTime:2.0];
}


//显示消息
+ (void)alienEndsCenter:(NSString *)message location:(NSString *)aLocationStr formTime:(float)aShowTime
{
    if (!message || message.length <= 0) {
        return;
    }
    if ([[NSThread currentThread] isMainThread]) {
        toastLabel = [self optResponderLabel];
        [toastLabel removeFromSuperview];
        UIWindow *window = [UIApplication sharedApplication].delegate.window;
        [window addSubview:toastLabel];
        
        CGFloat main_width = [[UIScreen mainScreen] bounds].size.width;
        CGFloat main_height = [[UIScreen mainScreen] bounds].size.height;
        
        CGFloat width = [self unableText:message font:16 lacrosseOrder:YES greekValue:40];
        CGFloat height = 0;
        if (width > main_width - kWidth(20)) {
            
            width = main_width - kWidth(20);
            height = [self unableText:message font:16 lacrosseOrder:NO greekValue:width];
        }else{
            height = 40;
        }
        
        CGRect labFrame;
        if (aLocationStr && [aLocationStr isEqualToString:@"dG9w".relishKhaki]) {
            labFrame = CGRectMake((main_width-width)/2, main_height*0.15, width, height);
        }else if (aLocationStr && [aLocationStr isEqualToString:@"Ym90dG9t".relishKhaki]) {
            labFrame = CGRectMake((main_width-width)/2, main_height*0.85, width, height);
        }else{
            //default-->center
            labFrame = CGRectMake((main_width-width)/2, main_height*0.5-height*0.5, width, height);
        }
        toastLabel.frame = labFrame;
        toastLabel.text = message;
        toastLabel.alpha = 1;
        [UIView animateWithDuration:aShowTime animations:^{
            toastLabel.alpha = 0;
        } completion:^(BOOL finished) {
        }];
    }else{
        dispatch_async(dispatch_get_main_queue(), ^{
            [self warnToast:message location:aLocationStr formTime:aShowTime];
        });
        return;
    }
}




//显示消息
+ (void)warnToast:(NSString *)message location:(NSString *)aLocationStr formTime:(float)aShowTime
{
    if (!message || message.length <= 0) {
        return;
    }
    if ([[NSThread currentThread] isMainThread]) {
        toastLabel = [self optResponderLabel];
        [toastLabel removeFromSuperview];
        UIWindow *window = [UIApplication sharedApplication].delegate.window;
        [window addSubview:toastLabel];
        
        CGFloat main_width = [[UIScreen mainScreen] bounds].size.width;
        CGFloat main_height = [[UIScreen mainScreen] bounds].size.height;
        
        CGFloat width = [self unableText:message font:16 lacrosseOrder:YES greekValue:40];
        CGFloat height = 0;
        if (width > main_width - 60) {
            
            width = main_width - 60;
            height = [self unableText:message font:16 lacrosseOrder:NO greekValue:width];
        }else{
            height = 40;
        }
        
        CGRect labFrame;
        if (aLocationStr && [aLocationStr isEqualToString:@"dG9w".relishKhaki]) {
            labFrame = CGRectMake((main_width-width)/2, main_height*0.15, width, height);
        }else if (aLocationStr && [aLocationStr isEqualToString:@"Ym90dG9t".relishKhaki]) {
            labFrame = CGRectMake((main_width-width)/2, main_height*0.85, width, height);
        }else{
            //default-->center
            labFrame = CGRectMake((main_width-width)/2, main_height*0.5, width, height);
        }
        toastLabel.frame = labFrame;
        toastLabel.text = message;
        toastLabel.alpha = 1;
        [UIView animateWithDuration:aShowTime animations:^{
            toastLabel.alpha = 0;
        } completion:^(BOOL finished) {
        }];
    }else{
        dispatch_async(dispatch_get_main_queue(), ^{
            [self warnToast:message location:aLocationStr formTime:aShowTime];
        });
        return;
    }
}

//显示(带菊花的消息)-->default center
+ (void)closeNotBusSyntaxDismissAction:(NSString *)message
{
    [self meterPlayFlatToast:message location:@"Y2VudGVy".relishKhaki formTime:2.0];
}

//显示(带菊花的消息)
+ (void)meterPlayFlatToast:(NSString *)message location:(NSString *)aLocationStr formTime:(float)aShowTime
{
    if (!message) {
        message = @"";
    }
    if ([[NSThread currentThread] isMainThread]) {
        toastViewLabel = [self stoodOuterAccountsDitheredStepLabel];
        [toastViewLabel removeFromSuperview];

        UIWindow *window =  [RecoveredWarpPreservesSlavicIntegral disablesRemainingInsetNodeBagEvaluate];
        [window addSubview:toastViewLabel];
        
        UIView *rootSchemeView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT)];
        rootSchemeView.tag = 2001206;
        rootSchemeView.layer.masksToBounds = YES;
        rootSchemeView.backgroundColor = [UIColor clearColor];
        [window addSubview:rootSchemeView];
        
        CGFloat main_width = [[UIScreen mainScreen] bounds].size.width;
        CGFloat main_height = [[UIScreen mainScreen] bounds].size.height;
        
        CGFloat width = [self unableText:message font:16 lacrosseOrder:YES greekValue:40];
        CGFloat height = 0;
        if (width > main_width - 20) {
            width = main_width - 20;
            height = [self unableText:message font:16 lacrosseOrder:NO greekValue:width];
        }else{
            height = 40;
        }
        
        CGRect labFrame;
        if (aLocationStr && [aLocationStr isEqualToString:@"dG9w".relishKhaki]) {
            labFrame = CGRectMake((main_width-width)/2, main_height*0.15, width, 60+height);
        }else if (aLocationStr && [aLocationStr isEqualToString:@"Ym90dG9t".relishKhaki]) {
            labFrame = CGRectMake((main_width-width)/2, main_height*0.85, width, 60+height);
        }else{
            //default-->center
            labFrame = CGRectMake((main_width-width)/2, main_height*0.5, width, 60+height);
        }
        toastViewLabel.frame = labFrame;
        toastViewLabel.alpha = 1;
        
        UIActivityIndicatorView *indicatorView = [toastViewLabel viewWithTag:10];
        indicatorView.center = CGPointMake(width/2, 70/2);
        [indicatorView startAnimating];
        
        UILabel *aLabel = [toastViewLabel viewWithTag:11];
        aLabel.frame = CGRectMake(0, 60, width, height);
        aLabel.text = message;
        
        
    }else{
        dispatch_async(dispatch_get_main_queue(), ^{
            [self meterPlayFlatToast:message location:aLocationStr formTime:aShowTime];
        });
        return;
    }
}

//隐藏(带菊花的消息)
+ (void)permuteGeneratesSlashBigSupplyKinAction
{
    if (toastViewLabel) {
        dispatch_async(dispatch_get_main_queue(), ^{
            
            UIActivityIndicatorView *indicatorView = [toastViewLabel viewWithTag:10];
            [indicatorView stopAnimating];
            toastViewLabel.alpha = 0;
            [toastViewLabel removeFromSuperview];
            
            UIWindow *topVC = [RecoveredWarpPreservesSlavicIntegral disablesRemainingInsetNodeBagEvaluate];
            if ([topVC viewWithTag:2001206]) {
                UIView *oldView = [topVC viewWithTag:2001206];
                [oldView removeFromSuperview];
            }
            
        });
        
    }
}


//根据字符串长度获取对应的宽度或者高度
+ (CGFloat)unableText:(NSString *)aText font:(CGFloat)aFont lacrosseOrder:(BOOL)lacrosseOrder greekValue:(CGFloat)greekValue
{
    CGSize size;
    if (lacrosseOrder) {
        size = CGSizeMake(MAXFLOAT, greekValue);
    } else {
        size = CGSizeMake(greekValue, MAXFLOAT);
    }
    
    CGSize resultSize = CGSizeZero;
    if ([[[UIDevice currentDevice] systemVersion] doubleValue] >= 7.0) {
        //返回计算出的size
        resultSize = [aText boundingRectWithSize:size options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:aFont]} context:nil].size;
    }
    
    if (lacrosseOrder) {
        return resultSize.width + 30; //增加左右30间隔
    } else {
        return resultSize.height + 30; //增加上下30间隔
    }
}


@end
