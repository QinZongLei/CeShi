






#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DryTapSafeToast : NSObject




//显示菊花
+ (void)leaveMildAction;
//隐藏菊花
+ (void)unsafeWatchAction;






//显示消息-->default center
+ (void)leaveMildAction:(NSString *)message;



+ (void)warnToast:(NSString *)message location:(NSString *)aLocationStr formTime:(float)aShowTime;

+ (void)alienEndsCenter:(NSString *)message location:(NSString *)aLocationStr formTime:(float)aShowTime;






//显示(带菊花的消息)-->default center
+ (void)closeNotBusSyntaxDismissAction:(NSString *)message;



+ (void)meterPlayFlatToast:(NSString *)message location:(NSString *)aLocationStr formTime:(float)aShowTime;

//隐藏(带菊花的消息)
+ (void)permuteGeneratesSlashBigSupplyKinAction;



@end

NS_ASSUME_NONNULL_END
