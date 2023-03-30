//
//  SimpleSDK_Expose.m
//  SimpleSDK
//
//  Created by XYL on 2021/12/1.
//

#import "SimpleSDK_Expose.h"
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AdSupport/ASIdentifierManager.h>
#import "SimpleSDK_DataTools.h"
#import "SimpleSDK_Network.h"
#import "SimpleSDK_ViewManager.h"
#import "SimpleSDK_ApiManager.h"
#import "SimpleSDK_IPAManager.h"


@interface SimpleSDK_Expose ()


/** 定时器(这里不用带*，因为dispatch_source_t就是个类，内部已经包含了*) */
@property (nonatomic, strong) dispatch_source_t timer;

@end

@implementation SimpleSDK_Expose

+ (instancetype)sharedInstance {
    static SimpleSDK_Expose *_instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone:NULL] init];
    });
    return _instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [self sharedInstance];
}

- (id)copyWithZone:(NSZone *)zone {
    
    return self;
    
}

- (id)mutableCopyWithZone:(NSZone *)zone {
    return self;
}


void SDKIDFA(UIApplication * application){
    if (@available(iOS 14.5, *)) {
           // iOS14及以上版本需要先请求权限
           [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
               // 获取到权限后，依然使用老方法获取idfa
               switch (status) {
                   case ATTrackingManagerAuthorizationStatusNotDetermined:
                       
                       break;
                   case ATTrackingManagerAuthorizationStatusRestricted:
                       
                       break;
                   case ATTrackingManagerAuthorizationStatusDenied:
                       
                       break;
                   case ATTrackingManagerAuthorizationStatusAuthorized:
                       break;
               }
           }];
       }
       else
       {
           if ([[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled]) {
               NSString *idfas = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
               
           } else {
          
           }
       }
}


void STARTINIT(void(^HANDLE)(BOOL status, NSString *msg,NSString *isAudit)){
    [SimpleSDK_Expose sharedInstance].initHandle = HANDLE;
    if(kDictNotNull([SimpleSDK_DataTools manager].appInfo)){
        if(HANDLE){
            NSString * isAudit = [[SimpleSDK_DataTools manager].appInfo objectForKey:@"isAudit"];
            HANDLE(YES,@"初始化成功",isAudit);
        }
        return;
    }
    [SimpleSDK_ApiManager func_sdkInit];
}



void STARTLOGIN(void(^loginHandle)(BOOL status, NSString *msg, NSDictionary *data) ,void(^logoutHandle)(BOOL status, NSString *msg)){
    [SimpleSDK_Expose sharedInstance].loginHandle = loginHandle;
    [SimpleSDK_Expose sharedInstance].logoutHandle = logoutHandle;
    
    //如果初始化参数为空，再次初始化
    if(!kDictNotNull([SimpleSDK_DataTools manager].appInfo)){
        if([SimpleSDK_Expose sharedInstance].initHandle){
            STARTINIT([SimpleSDK_Expose sharedInstance].initHandle);
            return;
        }
        [SimpleSDK_Toast showToast:@"SDK 未初始化！" location:@"center" showTime:2.5];
        return;
    }
    
    [SimpleSDK_ViewManager func_showLoginViewOfHandle:^(NSDictionary * _Nonnull loginData) {
        
        [SimpleSDK_DataTools.manager func_setUserInfo:loginData];
        //封装登陆数据返回给cp
        NSMutableDictionary *tempData = [NSMutableDictionary new];
        if (kDictNotNull(loginData)) {
            [tempData setValue:kGameId forKey:@"appid"];
            [tempData setValue:[loginData valueForKey:@"sid"] forKey:@"token"];
            [tempData setValue:[loginData valueForKey:@"uid"] forKey:@"uid"];
            [tempData setValue:[loginData valueForKey:@"user_name"] forKey:@"username"];
            [tempData setValue:[SimpleSDK_Tools func_getTimesTamp] forKey:@"time"];
        }
        if (loginHandle) {
            loginHandle(YES,@"Success",tempData);
        }
        //弹出登录成功欢迎界面
        [SimpleSDK_ViewManager func_showWelcomView];
        
        //处理掉单问题
        [SimpleSDK_IPAManager func_startScanLocal];
    
        //拉取好评
        [SimpleSDK_ApiManager func_getReviewMsg:loginData];
        //启动心跳
        NSString *heartBeat  = [[SimpleSDK_DataTools manager].userInfo objectForKey:@"heart_beat"];
        if (heartBeat.intValue ==1) {
            [SimpleSDK_ApiManager func_startHeartbeat];
        }
      
        //判断是否显示悬浮球
        [SimpleSDK_ViewManager func_showFloatView];
        
       
        NSString *trueNameSwitchStr  = [[SimpleSDK_DataTools manager].userInfo objectForKey:@"trueNameSwitch"];
        NSString *fcm = [[SimpleSDK_DataTools manager].userInfo objectForKey:@"fcm"];
        //判断是否弹出实名  1，弹出不可关闭实名。 2，弹出可以关闭实名。 0，不弹出实名
        if (![@"0" isEqualToString:trueNameSwitchStr]) {
            if(fcm.intValue == 0){
                //没有认证过的弹出来
                [SimpleSDK_ViewManager func_showCertificationView:trueNameSwitchStr];
            }else{
                //如果不实名直接弹出
                [SimpleSDK_ViewManager func_showGiftFloatView];
            }
        }else{
            //如果不实名直接弹出
            [SimpleSDK_ViewManager func_showGiftFloatView];
        }
    }];
    
}

void STARTUPLOAD(NSDictionary * dic,NSString * uploadType,void(^HANDLE)(BOOL status, NSString *msg)){
    if (!kDictNotNull([SimpleSDK_DataTools manager].userInfo)) {
        [SimpleSDK_Toast showToast:@"账号未登录！" location:@"center" showTime:2.5];
        return;
    }
    [SimpleSDK_ApiManager func_uploadMsgDic:uploadType params:dic FuncBlock:^(BOOL status, NSString * _Nonnull msg) {
        HANDLE(status,msg);
    }];
}

void STARTCREATEORDER(NSDictionary * dic,void(^HANDLE)(BOOL status, NSString *msg)){
    if (!kDictNotNull([SimpleSDK_DataTools manager].userInfo)) {
        [SimpleSDK_Toast showToast:@"账号未登录！" location:@"center" showTime:2.5];
        return;
    }
    [SimpleSDK_ApiManager func_createOrder:dic FuncBlock:^(BOOL status, NSString * _Nonnull msg) {
        HANDLE(status,msg);
    }];
    
}

void STARTLOGOUT(void(^HANDLE)(BOOL status, NSString *msg)){
    if (!kDictNotNull([SimpleSDK_DataTools manager].userInfo)) {
        [SimpleSDK_Toast showToast:@"账号未登录！" location:@"center" showTime:2.5];
        return;
    }
    //首先移除掉悬浮球
    [SimpleSDK_ViewManager func_removeFloatView];
    //移除礼包悬浮球
    [SimpleSDK_ViewManager func_removeCodeFloatView];
    [SimpleSDK_ApiManager func_logout:^(BOOL status) {
        if (status) {
            HANDLE(YES,@"退出成功！");
        }
    }];
}

@end
