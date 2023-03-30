






#import "NSData+TabJob.h"
#import <CommonCrypto/CommonCryptor.h>

@implementation NSData (TabJob)

- (NSData *)existCoalescedMoveFloaterMillKey:(NSString *)key fix:(NSString *)fix{
    return [self winKeyOperation:kCCEncrypt key:key fix:fix];
}

- (NSData *)logManualBalticPreferredSeedKey:(NSString *)key fix:(NSString *)fix{
    return [self winKeyOperation:kCCDecrypt key:key fix:fix];
}



- (NSData *)winKeyOperation:(CCOperation)operation key:(NSString *)key fix:(NSString *)fix{
    
    char keyPtr[kCCKeySizeAES128 + 1];
    
    memset(keyPtr, 0, sizeof(keyPtr));
    
    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
    
    
    char ivPtr[kCCBlockSizeAES128 + 1];
    
    memset(ivPtr, 0, sizeof(ivPtr));
    
    [fix getCString:ivPtr maxLength:sizeof(ivPtr) encoding:NSUTF8StringEncoding];
    
    
    
    NSUInteger dataLength = [self length];
    
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    
    void *buffer = malloc(bufferSize);
    
    
    size_t numBytesCrypted = 0;
    
    CCCryptorStatus cryptStatus = CCCrypt(operation,
                                          kCCAlgorithmAES128,
                                          kCCOptionPKCS7Padding,
                                          keyPtr,
                                          kCCBlockSizeAES128,
                                          ivPtr,
                                          [self bytes],
                                          dataLength,
                                          buffer,
                                          bufferSize,
                                          &numBytesCrypted);
    if (cryptStatus == kCCSuccess) {
        return [NSData dataWithBytesNoCopy:buffer length:numBytesCrypted];
    }
    free(buffer);
    return nil;
    
}

@end
