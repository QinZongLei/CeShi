//
//  SimpleSDK_Expose.h
//  SimpleSDK
//
//  Created by XYL on 2021/12/1.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface SimpleSDK_Expose : NSObject

@property (nonatomic, copy) void (^initHandle)(BOOL status, NSString *msg,NSString *isAudit);

@property (nonatomic, copy) void (^loginHandle)(BOOL status, NSString *msg, NSDictionary *loginData);

@property (nonatomic, copy) void (^logoutHandle)(BOOL status, NSString *msg);

+ (instancetype)sharedInstance;
#ifdef __cplusplus
extern "C" {
#endif
    //idfa 授权
    void SDKIDFA(UIApplication * application);
   //SDK初始化
    void STARTINIT(void(^)(BOOL status, NSString *msg,NSString *isAudit));
    //SDK调起登陆
    void STARTLOGIN(void(^)(BOOL status, NSString *msg, NSDictionary *data) ,void(^)(BOOL status, NSString *msg));
   //SDK数据上报
    void STARTUPLOAD(NSDictionary * dic,NSString * uploadType,void(^)(BOOL status, NSString *msg));
  //SDK调起内购
    void STARTCREATEORDER(NSDictionary * dic,void(^)(BOOL status, NSString *msg));
   //SDK退出登陆
    void STARTLOGOUT(void(^)(BOOL status, NSString *msg));

#ifdef __cplusplus
} // extern "C"
#endif

@end

NS_ASSUME_NONNULL_END
