


#import <Foundation/Foundation.h>
#import "SDWebImageCompat.h"

typedef NS_ENUM(NSUInteger, SDImageCacheConfigExpireType) {
    

    SDImageCacheConfigExpireTypeAccessDate,
    

    SDImageCacheConfigExpireTypeModificationDate
};

@interface SDImageCacheConfig : NSObject



@property (assign, nonatomic) BOOL shouldDecompressImages;



@property (assign, nonatomic) BOOL shouldDisableiCloud;



@property (assign, nonatomic) BOOL shouldCacheImagesInMemory;



@property (assign, nonatomic) BOOL shouldUseWeakMemoryCache;



@property (assign, nonatomic) NSDataReadingOptions diskCacheReadingOptions;



@property (assign, nonatomic) NSDataWritingOptions diskCacheWritingOptions;



@property (assign, nonatomic) NSInteger maxCacheAge;



@property (assign, nonatomic) NSUInteger maxCacheSize;



@property (assign, nonatomic) SDImageCacheConfigExpireType diskCacheExpireType;

@end
