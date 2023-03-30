
#import "NSString+Scruffy.h"




#import "UIImage+GIF.h"
#import "SDWebImageGIFCoder.h"
#import "NSImage+WebCache.h"

@implementation UIImage (GIF)

+ (UIImage *)sd_animatedGIFNamed:(NSString *)name {
    NSData *data = [NSData dataWithContentsOfFile:[[NSBundle bundleWithURL:kGetBundle pathForResource:name ofType:@"Z2lm".relishKhaki]];
    return [UIImage sd_animatedGIFWithData:data];
}

+ (UIImage *)sd_animatedGIFWithData:(NSData *)data {
    if (!data) {
        return nil;
    }
    return [[SDWebImageGIFCoder sharedCoder] decodedImageWithData:data];
}

- (BOOL)isGIF {
    return (self.images != nil);
}

@end
