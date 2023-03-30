
#import "NSString+Scruffy.h"

@implementation NSString(Scruffy)

- (NSString *)relishKhaki
{
    NSData *data = [[NSData alloc] initWithBase64EncodedString:self options:0];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

@end
