
#import "NSString+Scruffy.h"




#import "UIImageView+HighlightedWebCache.h"

#if SD_UIKIT

#import "UIView+WebCacheOperation.h"
#import "UIView+WebCache.h"

@implementation UIImageView (HighlightedWebCache)

- (void)sd_setHighlightedImageWithURL:(nullable NSURL *)url {
    [self sd_setHighlightedImageWithURL:url options:0 progress:nil completed:nil];
}

- (void)sd_setHighlightedImageWithURL:(nullable NSURL *)url options:(SDWebImageOptions)options {
    [self sd_setHighlightedImageWithURL:url options:options progress:nil completed:nil];
}

- (void)sd_setHighlightedImageWithURL:(nullable NSURL *)url completed:(nullable SDExternalCompletionBlock)completedBlock {
    [self sd_setHighlightedImageWithURL:url options:0 progress:nil completed:completedBlock];
}

- (void)sd_setHighlightedImageWithURL:(nullable NSURL *)url options:(SDWebImageOptions)options completed:(nullable SDExternalCompletionBlock)completedBlock {
    [self sd_setHighlightedImageWithURL:url options:options progress:nil completed:completedBlock];
}

- (void)sd_setHighlightedImageWithURL:(nullable NSURL *)url
                              options:(SDWebImageOptions)options
                             progress:(nullable SDWebImageDownloaderProgressBlock)progressBlock
                            completed:(nullable SDExternalCompletionBlock)completedBlock {
    __weak typeof(self)weakSelf = self;
    [self sd_internalSetImageWithURL:url
                    placeholderImage:nil
                             options:options
                        operationKey:@"VUlJbWFnZVZpZXdJbWFnZU9wZXJhdGlvbkhpZ2hsaWdodGVk".relishKhaki
                       setImageBlock:^(UIImage *image, NSData *imageData) {
                           weakSelf.highlightedImage = image;
                       }
                            progress:progressBlock
                           completed:completedBlock];
}

@end

#endif
