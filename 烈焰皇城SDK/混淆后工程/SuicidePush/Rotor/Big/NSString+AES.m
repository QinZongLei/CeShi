
#import "NSString+Scruffy.h"








#import "NSString+AES.h"
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>
#import "TeluguEye.h"
#import "NSData+TabJob.h"

static NSString *const kOffSinRows = @"456";
static NSString *const kPerformedSonLongitudeSupplyYou = @"789";
@implementation NSString (AES)

- (NSString*)repairKannadaUpsideLocationImpliedKey:(NSString *)aes_key kPerformedSonLongitudeSupplyYou:(NSString *)ivStr

{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSData *AESData = [self extensionWaterNoteLocallyIncrease:kCCEncrypt
                                       data:data
                                        key:aes_key
                                         fix:ivStr];
    NSString *baseStr_GTM = [self senseBackTipData:AESData];

    if (DEBUG) {
        NSString *baseStr = [AESData base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
        
        
    }
 
    return baseStr_GTM;
    
}
- (NSString*)farthestBaselineBridgingOutHigh {
    
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSData *AESData = [self extensionWaterNoteLocallyIncrease:kCCEncrypt
                                       data:data
                                        key:kOffSinRows
                                         fix:kPerformedSonLongitudeSupplyYou];
    NSString *baseStr_GTM = [self senseBackTipData:AESData];

    if (DEBUG) {
        NSString *baseStr = [AESData base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
        
        
    }
 
    return baseStr_GTM;
}

- (NSString*)directoryUpdatesExceedsYetAsterisk:(NSString *)tsstr;{
    
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSData *baseData_GTM = [self longerKitWhoData:data];
    NSData *baseData = [[NSData alloc]initWithBase64EncodedString:self options:0];
    
    NSData *AESData_GTM = [self extensionWaterNoteLocallyIncrease:kCCDecrypt
                                           data:baseData_GTM
                                            key:tsstr
                                             fix:[self rangeIncorrect:tsstr]];
    NSData *AESData = [self extensionWaterNoteLocallyIncrease:kCCDecrypt
                                       data:baseData
                                        key:tsstr
                                         fix:[self rangeIncorrect:tsstr]];
    
    NSString *decStr_GTM = [[NSString alloc] initWithData:AESData_GTM encoding:NSUTF8StringEncoding];
    NSString *decStr = [[NSString alloc] initWithData:AESData encoding:NSUTF8StringEncoding];
    
    if (DEBUG) {
      
      
    }
    
    return decStr;
}
- (NSString*)rangeIncorrect:(NSString *)tsstr5{
    
       
 NSMutableString * string = [[NSMutableString alloc]initWithCapacity:tsstr5.length];

    int j = (int)tsstr5.length;

    for (int i = j - 1; i >= 0; i--) {

        [string appendFormat:@"JWM=".relishKhaki, [tsstr5 characterAtIndex:i]];

    }
  
    return string;
    
}

- (NSString*)temporalOrderBedRetrieveMill {
    
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSData *baseData_GTM = [self longerKitWhoData:data];
    NSData *baseData = [[NSData alloc]initWithBase64EncodedString:self options:0];
    
    NSData *AESData_GTM = [self extensionWaterNoteLocallyIncrease:kCCDecrypt
                                           data:baseData_GTM
                                            key:kOffSinRows
                                             fix:kPerformedSonLongitudeSupplyYou];
    NSData *AESData = [self extensionWaterNoteLocallyIncrease:kCCDecrypt
                                       data:baseData
                                        key:kOffSinRows
                                         fix:kPerformedSonLongitudeSupplyYou];
    
    NSString *decStr_GTM = [[NSString alloc] initWithData:AESData_GTM encoding:NSUTF8StringEncoding];
    NSString *decStr = [[NSString alloc] initWithData:AESData encoding:NSUTF8StringEncoding];
    
    if (DEBUG) {
      
      
    }
    
    return decStr;
}



- (NSData *)extensionWaterNoteLocallyIncrease:(CCOperation)operation data:(NSData *)data key:(NSString *)key fix:(NSString *)fix {
    char keyPtr[kCCKeySizeAES128 + 1];
    bzero(keyPtr, sizeof(keyPtr));
    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
    
    
    char ivPtr[kCCBlockSizeAES128 + 1];
    bzero(ivPtr, sizeof(ivPtr));
    [fix getCString:ivPtr maxLength:sizeof(ivPtr) encoding:NSUTF8StringEncoding];
    
    size_t bufferSize = [data length] + kCCBlockSizeAES128;
    void *buffer = malloc(bufferSize);
    size_t numBytesEncrypted = 0;
    
    CCCryptorStatus cryptorStatus = CCCrypt(operation, kCCAlgorithmAES128, kCCOptionPKCS7Padding,
                                            keyPtr, kCCKeySizeAES128,
                                            ivPtr,
                                            [data bytes], [data length],
                                            buffer, bufferSize,
                                            &numBytesEncrypted);
    
    if(cryptorStatus == kCCSuccess) {
        if (DEBUG) {
          
        }
        
        return [NSData dataWithBytesNoCopy:buffer length:numBytesEncrypted];
        
    } else {
        if (DEBUG) {
          
        }
    }
    
    free(buffer);
    return nil;
}

- (NSString *)doneBridgingDevicesSolidShortcutSubtitleProducts:(NSString *)string itsSmall:(NSString *)itsSmall {
    
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
       NSData *soloistData = [data existCoalescedMoveFloaterMillKey:itsSmall fix:itsSmall];
       NSString *encryptring =  [soloistData base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
       return encryptring;
    
}

- (NSString *)doneBridgingDevicesSolidShortcutSubtitleProducts:(NSString *)string key:(NSString*)key fix:(NSString *)fix
{
       NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
       NSData *soloistData = [data existCoalescedMoveFloaterMillKey:key fix:fix];
       NSString *encryptring = [self fetchEggCaretData:soloistData];

    
       return encryptring;
    
}


//加密
+ (NSString *)doneBridgingDevicesSolidShortcutSubtitleProducts:(NSString *)string key:(NSString*)key fix:(NSString *)fix{
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    NSData *soloistData = [data existCoalescedMoveFloaterMillKey:key fix:fix];
    NSString *encryptring =  [soloistData base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    return encryptring;
    
}


//解密
+ (NSString *)escapedHyphensButtonBeenGroupLeapBalance:(NSString *)string itsSmall:(NSString *)itsSmall{
    
    NSData *decryptBase64data = [[NSData alloc]initWithBase64EncodedString:string options:NSDataBase64DecodingIgnoreUnknownCharacters];
    NSData *decryptData = [decryptBase64data logManualBalticPreferredSeedKey:itsSmall fix:itsSmall];
    NSString *promptItalian = [[NSString alloc]initWithData:decryptData encoding:NSUTF8StringEncoding];
    return promptItalian;
   
}

//解密
+ (NSString *)escapedHyphensButtonBeenGroupLeapBalance:(NSString *)string key:(NSString *)key fix:(NSString *)fix{
    

    NSData *data = [self malayHexQualifierBuddhistHostData:string];
    NSData *decryptData = [data logManualBalticPreferredSeedKey:key fix:fix];
    NSString *promptItalian = [[NSString alloc]initWithData:decryptData encoding:NSUTF8StringEncoding];
    return promptItalian;
    
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



- (NSData *)winKeyOperation:(CCOperation)operation key:(NSString *)key fix:(NSString *)fix

{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
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
                                         
                                         [data bytes],
                                         
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


- (NSData *)existCoalescedMoveFloaterMillKey:(NSString *)key fix:(NSString *)fix

{
   
   return [self winKeyOperation:kCCEncrypt key:key fix:fix];
   
}


- (NSData *)logManualBalticPreferredSeedKey:(NSString *)key fix:(NSString *)fix

{
   
   return [self winKeyOperation:kCCDecrypt key:key fix:fix];
   
}
-(NSString *)fetchEggCaretData:(NSData *)data{
    
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





- (NSString*)senseBackTipData:(NSData *)data {
    data = [TeluguEye canTapData:data];
    NSString *base64String = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return base64String;
}



- (NSData*)longerKitWhoData:(NSData *)data {
    data = [TeluguEye frenchData:data];
    return data;
}

@end
