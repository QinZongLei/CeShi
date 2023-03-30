//
//  AppDelegate.m
//  Demo
//
//  Created by CCYQ on 2021/4/19.
//

#import "AppDelegate.h"
#import <SimpleSDK/SimpleSDK.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

//处理15.1 不弹出获取idfa授权界面问题。
- (void)applicationDidBecomeActive:(UIApplication *)application
{
     SDKIDFA(application);
}

@end
