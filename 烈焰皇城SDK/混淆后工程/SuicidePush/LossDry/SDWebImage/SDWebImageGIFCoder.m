


#import "SDWebImageGIFCoder.h"
#import "NSImage+WebCache.h"
#import <ImageIO/ImageIO.h>
#import "NSData+ImageContentType.h"
#import "UIImage+MultiFormat.h"
#import "SDWebImageCoderHelper.h"
#import "SDAnimatedImageRep.h"

@implementation SDWebImageGIFCoder

+ (instancetype)sharedCoder {
    static SDWebImageGIFCoder *coder;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        coder = [[SDWebImageGIFCoder alloc] init];
    });
    return coder;
}


- (BOOL)canDecodeFromData:(nullable NSData *)data {
    return ([NSData sd_imageFormatForImageData:data] == SDImageFormatGIF);
}

- (UIImage *)decodedImageWithData:(NSData *)data {
    if (!data) {
        return nil;
    }
    
#if SD_MAC
    SDAnimatedImageRep *imageRep = [[SDAnimatedImageRep alloc] initWithData:data];
    NSImage *animatedImage = [[NSImage alloc] initWithSize:imageRep.size];
    [animatedImage addRepresentation:imageRep];
    return animatedImage;
#else
    
    CGImageSourceRef source = CGImageSourceCreateWithData((__bridge CFDataRef)data, NULL);
    if (!source) {
        return nil;
    }
    size_t count = CGImageSourceGetCount(source);
    
    UIImage *animatedImage;
    
    if (count <= 1) {
        animatedImage = [[UIImage alloc] initWithData:data];
    } else {
        NSMutableArray<SDWebImageFrame *> *frames = [NSMutableArray array];
        
        for (size_t i = 0; i < count; i++) {
            CGImageRef imageRef = CGImageSourceCreateImageAtIndex(source, i, NULL);
            if (!imageRef) {
                continue;
            }
            
            float duration = [self sd_frameDurationAtIndex:i source:source];
            UIImage *image = [[UIImage alloc] initWithCGImage:imageRef];
            CGImageRelease(imageRef);
            
            SDWebImageFrame *frame = [SDWebImageFrame frameWithImage:image duration:duration];
            [frames addObject:frame];
        }
        
        NSUInteger loopCount = 1;
        NSDictionary *imageProperties = (__bridge_transfer NSDictionary *)CGImageSourceCopyProperties(source, nil);
        NSDictionary *gifProperties = [imageProperties valueForKey:(__bridge NSString *)kCGImagePropertyGIFDictionary];
        if (gifProperties) {
            NSNumber *gifLoopCount = [gifProperties valueForKey:(__bridge NSString *)kCGImagePropertyGIFLoopCount];
            if (gifLoopCount != nil) {
                loopCount = gifLoopCount.unsignedIntegerValue;
            }
        }
        
        animatedImage = [SDWebImageCoderHelper animatedImageWithFrames:frames];
        animatedImage.sd_imageLoopCount = loopCount;
        animatedImage.sd_imageFormat = SDImageFormatGIF;
    }
    
    CFRelease(source);
    
    return animatedImage;
#endif
}

- (float)sd_frameDurationAtIndex:(NSUInteger)index source:(CGImageSourceRef)source {
    float frameDuration = 0.1f;
    CFDictionaryRef cfFrameProperties = CGImageSourceCopyPropertiesAtIndex(source, index, nil);
    if (!cfFrameProperties) {
        return frameDuration;
    }
    NSDictionary *frameProperties = (__bridge NSDictionary *)cfFrameProperties;
    NSDictionary *gifProperties = frameProperties[(NSString *)kCGImagePropertyGIFDictionary];
    
    NSNumber *delayTimeUnclampedProp = gifProperties[(NSString *)kCGImagePropertyGIFUnclampedDelayTime];
    if (delayTimeUnclampedProp != nil) {
        frameDuration = [delayTimeUnclampedProp floatValue];
    } else {
        NSNumber *delayTimeProp = gifProperties[(NSString *)kCGImagePropertyGIFDelayTime];
        if (delayTimeProp != nil) {
            frameDuration = [delayTimeProp floatValue];
        }
    }
    
    
    
    
    
    
    if (frameDuration < 0.011f) {
        frameDuration = 0.100f;
    }
    
    CFRelease(cfFrameProperties);
    return frameDuration;
}

- (UIImage *)decompressedImageWithImage:(UIImage *)image
                                   data:(NSData *__autoreleasing  _Nullable *)data
                                options:(nullable NSDictionary<NSString*, NSObject*>*)optionsDict {
    
    return image;
}


- (BOOL)canEncodeToFormat:(SDImageFormat)format {
    return (format == SDImageFormatGIF);
}

- (NSData *)encodedDataWithImage:(UIImage *)image format:(SDImageFormat)format {
    if (!image) {
        return nil;
    }
    
    if (format != SDImageFormatGIF) {
        return nil;
    }
    
    NSMutableData *imageData = [NSMutableData data];
    CFStringRef imageUTType = [NSData sd_UTTypeFromSDImageFormat:SDImageFormatGIF];
    NSArray<SDWebImageFrame *> *frames = [SDWebImageCoderHelper framesFromAnimatedImage:image];
    
    
    CGImageDestinationRef imageDestination = CGImageDestinationCreateWithData((__bridge CFMutableDataRef)imageData, imageUTType, frames.count, NULL);
    if (!imageDestination) {
        
        return nil;
    }
    if (frames.count == 0) {
        
        CGImageDestinationAddImage(imageDestination, image.CGImage, nil);
    } else {
        
        NSUInteger loopCount = image.sd_imageLoopCount;
        NSDictionary *gifProperties = @{(__bridge NSString *)kCGImagePropertyGIFDictionary: @{(__bridge NSString *)kCGImagePropertyGIFLoopCount : @(loopCount)}};
        CGImageDestinationSetProperties(imageDestination, (__bridge CFDictionaryRef)gifProperties);
        
        for (size_t i = 0; i < frames.count; i++) {
            SDWebImageFrame *frame = frames[i];
            float frameDuration = frame.duration;
            CGImageRef frameImageRef = frame.image.CGImage;
            NSDictionary *frameProperties = @{(__bridge NSString *)kCGImagePropertyGIFDictionary : @{(__bridge NSString *)kCGImagePropertyGIFDelayTime : @(frameDuration)}};
            CGImageDestinationAddImage(imageDestination, frameImageRef, (__bridge CFDictionaryRef)frameProperties);
        }
    }
    
    if (CGImageDestinationFinalize(imageDestination) == NO) {
        
        imageData = nil;
    }
    
    CFRelease(imageDestination);
    
    return [imageData copy];
}

@end
