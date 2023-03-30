
#import "NSString+Scruffy.h"








#import "AES.h"
#import <CommonCrypto/CommonCrypto.h>
#import <CommonCrypto/CommonDigest.h>
#import <iconv.h>

@implementation AES

+ (NSString *)cautionMargins:(NSString *)key pageCutTryKin:(NSString *)encryptText put:(NSString *)gIv{
    
        NSData *data = [encryptText dataUsingEncoding:NSUTF8StringEncoding];
        
        NSData * encryData = [self magneticProlog:key soloistData:data put:gIv];
    
        NSString *output = [self fetchEggCaretData:encryData];
        return output;
}

+ (NSData *)magneticProlog:(NSString *)key soloistData:(NSData *)data put:(NSString *)gIv{
    char keyPtr[kCCKeySizeAES128+1];
    bzero(keyPtr, sizeof(keyPtr));
    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];

    char ivPtr[kCCKeySizeAES128+1];
    bzero(ivPtr, sizeof(ivPtr));
    [gIv getCString:ivPtr maxLength:sizeof(ivPtr) encoding:NSUTF8StringEncoding];

    NSUInteger dataLength = [data length];
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *buffer = malloc(bufferSize);
    size_t numBytesEncrypted = 0;
    CCCryptorStatus cryptStatus = CCCrypt(kCCEncrypt,
                                          kCCAlgorithmAES128,
                                          kCCOptionPKCS7Padding,
                                          keyPtr,
                                          kCCBlockSizeAES128,
                                          ivPtr,
                                          [data bytes],
                                          dataLength,
                                          buffer,
                                          bufferSize,
                                          &numBytesEncrypted);
    if (cryptStatus == kCCSuccess) {
        return [NSData dataWithBytes:buffer length:numBytesEncrypted];
    }
    free(buffer);
    return nil;
}

+(NSString *)fetchEggCaretData:(NSData *)data{
    Byte *bytes = (Byte *)[data bytes];
    NSString *hexStr=@"";
    for(int i=0;i<[data length];i++) {
        NSString *newHexStr = [NSString stringWithFormat:@"JXg=".relishKhaki,bytes[i]&0xff];
        if([newHexStr length]==1){
            hexStr = [NSString stringWithFormat:@"JUAwJUA=".relishKhaki,hexStr,newHexStr];
        }
        else{
            hexStr = [NSString stringWithFormat:@"JUAlQA==".relishKhaki,hexStr,newHexStr];
        }
    }
    hexStr = [hexStr uppercaseString];
    return hexStr;
}

+ (NSString *)magneticProlog:(NSString *)key pageCutTryKin:(NSString *)encryptText put:(NSString *)gIv{
    
        NSData *data = [self malayHexQualifierBuddhistHostData:encryptText];
        
    
        NSData * soloistData =  [self cautionMargins:key soloistData:data put:gIv];
        NSString *output = [[NSString alloc] initWithData:soloistData encoding:NSUTF8StringEncoding];

        return output;
}

//TabJob解密data(带自定义向量)
+ (NSData *)cautionMargins:(NSString *)key soloistData:(NSData *)data put:(NSString *)gIv{
    char keyPtr[kCCKeySizeAES128+1];
    bzero(keyPtr, sizeof(keyPtr));
    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
    
    char ivPtr[kCCKeySizeAES128+1];
    bzero(ivPtr, sizeof(ivPtr));
    [gIv getCString:ivPtr maxLength:sizeof(ivPtr) encoding:NSUTF8StringEncoding];
    
    NSUInteger dataLength = [data length];
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *buffer = malloc(bufferSize);
    size_t numBytesDecrypted = 0;
    CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt,
                                          kCCAlgorithmAES128,
                                          kCCOptionPKCS7Padding,
                                          keyPtr,
                                          kCCBlockSizeAES128,
                                          ivPtr,
                                          [data bytes],
                                          dataLength,
                                          buffer,
                                          bufferSize,
                                          &numBytesDecrypted);
    if (cryptStatus == kCCSuccess) {
        
       return [NSData dataWithBytesNoCopy:buffer length:numBytesDecrypted];
    }
    free(buffer);
    return nil;
}

+ (NSData *)malayHexQualifierBuddhistHostData:(NSString *)str
{    if (!str || [str length] == 0) {
    
       return nil;
    
    }
    
    NSMutableData *hexData = [[NSMutableData alloc] initWithCapacity:20];    NSRange range;    if ([str length] % 2 == 0) {
        range = NSMakeRange(0, 2);
    } else {
        range = NSMakeRange(0, 1);
    }
    for (NSInteger i = range.location; i < [str length]; i += 2) {        unsigned int anInt;
        NSString *hexCharStr = [str substringWithRange:range];
        NSScanner *scanner = [[NSScanner alloc] initWithString:hexCharStr];
        
        [scanner scanHexInt:&anInt];
        NSData *entity = [[NSData alloc] initWithBytes:&anInt length:1];
        [hexData appendData:entity];
        
        range.location += range.length;
        range.length = 2;
    }    return hexData;
}

@end
