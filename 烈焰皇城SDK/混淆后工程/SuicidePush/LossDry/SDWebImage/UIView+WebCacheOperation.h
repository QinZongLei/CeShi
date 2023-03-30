


#import "SDWebImageCompat.h"
#import "SDWebImageOperation.h"



@interface UIView (WebCacheOperation)



- (void)sd_setImageLoadOperation:(nullable id<SDWebImageOperation>)operation forKey:(nullable NSString *)key;



- (void)sd_cancelImageLoadOperationWithKey:(nullable NSString *)key;



- (void)sd_removeImageLoadOperationWithKey:(nullable NSString *)key;

@end
