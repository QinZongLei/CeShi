


#import <TargetConditionals.h>

#ifdef __OBJC_GC__
    #error SDWebImage does not support Objective-C Garbage Collection
#endif




#if !TARGET_OS_IPHONE && !TARGET_OS_IOS && !TARGET_OS_TV && !TARGET_OS_WATCH
    #define SD_MAC 1
#else
    #define SD_MAC 0
#endif



#if TARGET_OS_IOS || TARGET_OS_TV
    #define SD_UIKIT 1
#else
    #define SD_UIKIT 0
#endif

#if TARGET_OS_IOS
    #define SD_IOS 1
#else
    #define SD_IOS 0
#endif

#if TARGET_OS_TV
    #define SD_TV 1
#else
    #define SD_TV 0
#endif

#if TARGET_OS_WATCH
    #define SD_WATCH 1
#else
    #define SD_WATCH 0
#endif


#if SD_MAC
    #import <AppKit/AppKit.h>
    #ifndef UIImage
        #define UIImage NSImage
    #endif
    #ifndef UIImageView
        #define UIImageView NSImageView
    #endif
    #ifndef UIView
        #define UIView NSView
    #endif
#else
    #if __IPHONE_OS_VERSION_MIN_REQUIRED != 20000 && __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_5_0
        #error SDWebImage doesn't support Deployment Target version < 5.0
    #endif

    #if SD_UIKIT
        #import <UIKit/UIKit.h>
    #endif
    #if SD_WATCH
        #import <WatchKit/WatchKit.h>
        #ifndef UIView
            #define UIView WKInterfaceObject
        #endif
        #ifndef UIImageView
            #define UIImageView WKInterfaceImage
        #endif
    #endif
#endif

#ifndef NS_ENUM
#define NS_ENUM(_type, _name) enum _name : _type _name; enum _name : _type
#endif

#ifndef NS_OPTIONS
#define NS_OPTIONS(_type, _name) enum _name : _type _name; enum _name : _type
#endif

FOUNDATION_EXPORT UIImage *SDScaledImageForKey(NSString *key, UIImage *image);

typedef void(^SDWebImageNoParamsBlock)(void);

FOUNDATION_EXPORT NSString *const SDWebImageErrorDomain;

#ifndef dispatch_queue_async_safe
#define dispatch_queue_async_safe(queue, block)\
    if (dispatch_queue_get_label(DISPATCH_CURRENT_QUEUE_LABEL) == dispatch_queue_get_label(queue)) {\
        block();\
    } else {\
        dispatch_async(queue, block);\
    }
#endif

#ifndef dispatch_main_async_safe
#define dispatch_main_async_safe(block) dispatch_queue_async_safe(dispatch_get_main_queue(), block)
#endif
