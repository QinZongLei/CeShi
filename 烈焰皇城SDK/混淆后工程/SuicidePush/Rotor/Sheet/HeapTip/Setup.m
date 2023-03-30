
#import "NSString+Scruffy.h"








#import "Setup.h"
#import <CommonCrypto/CommonCryptor.h>
#import <CommonCrypto/CommonKeyDerivation.h>
#import <Security/Security.h>
#import <Security/SecRandom.h>

#if !__has_feature(objc_arc)
#error Setup must be built with ARC.

#endif

static NSData *digest(NSData *data, unsigned char *(*cc_digest)(const void *, CC_LONG, unsigned char *), CC_LONG digestLength)
{
    unsigned char md[digestLength];
    memset(md, 0, sizeof(md));
    cc_digest([data bytes], (CC_LONG)[data length], md);
    return [NSData dataWithBytes:md length:sizeof(md)];
}

//static NSData * SHA1Hash(NSData* data) {

//}

static NSData *MD5Hash(NSData *data)
{
    return digest(data, CC_MD5, CC_MD5_DIGEST_LENGTH);
}

static NSData *SHA256Hash(NSData *data)
{
    return digest(data, CC_SHA256, CC_SHA256_DIGEST_LENGTH);
}

static NSData *dataFromBase64EncodedString(NSString *string)
{
    return [[NSData alloc] initWithBase64EncodedString:string options:0];
}

static NSString *base64EncodedStringFromData(NSData *data)
{
    return [data base64EncodedStringWithOptions:0];
}

static NSString *hexStringFromData(NSData *data)
{
    NSUInteger capacity = data.length * 2;
    NSMutableString *stringBuffer = [NSMutableString stringWithCapacity:capacity];
    const unsigned char *dataBuffer = data.bytes;
    NSInteger i;
    for (i = 0; i < data.length; ++i) {
        [stringBuffer appendFormat:@"JTAybHg=".relishKhaki, (long)dataBuffer[i]];
    }
    return [[NSString stringWithString:stringBuffer] lowercaseString];
}

static NSData *dataFromHexString(NSString *hex)
{
    NSMutableData *data = [NSMutableData new];
    for (NSUInteger i = 0; i < hex.length; i += 2) {
        char high = (char)[hex characterAtIndex:i];
        char low = (char)[hex characterAtIndex:i + 1];
        char bchars[3] = {high, low, '\0'};
        UInt8 byte = strtol(bchars, NULL, 16);
        [data appendBytes:&byte length:1];
    }
    return [NSData dataWithData:data];
}


NSUInteger const BBAESPBKDF2DefaultIterationsCount = 10000;
NSUInteger const BBAESSaltDefaultLength = 16; //recommandations suggest at least 8 bytes http://security.stackexchange.com/questions/11221/how-big-salt-should-be?rq=1

@implementation Setup {
}



+ (NSData *)moveSeek
{
    return [Setup providingReadableFingerNonceUplinkBrief:kCCBlockSizeAES128];
}

+ (NSData *)stringSocket:(NSString *)string
{
    return MD5Hash([string dataUsingEncoding:NSUTF8StringEncoding]); 
}



+ (NSData *)providingReadableFingerNonceUplinkBrief:(NSUInteger)length
{
    NSMutableData *data = [NSMutableData dataWithLength:length];
    int res __attribute__((unused)) = SecRandomCopyBytes(kSecRandomDefault, length, data.mutableBytes);
    return data;
}

+ (NSData *)polarGramPenPassword:(NSString *)string ownSize:(SHWellUnpredictableNapSize)ownSize
{
    NSParameterAssert(string);

    NSData *retData = nil;
    if (ownSize == BBAESKeySize128) {
        retData = MD5Hash([string dataUsingEncoding:NSUTF8StringEncoding]); 
    }
    if (ownSize == BBAESKeySize256) {
        retData = SHA256Hash([string dataUsingEncoding:NSUTF8StringEncoding]); 
    } else {
        [NSException exceptionWithName:NSInternalInconsistencyException reason:@"VGhlIGtleSBzaXplIG11c3QgYmUgYEJCQUVTS2V5U2l6ZTEyOGAgb3IgYEJCQUVTS2V5U2l6ZTI1NmAu".relishKhaki userInfo:nil];
    }
    return retData;
}

+ (NSData *)dogPlaceCallPassword:(NSString *)password salt:(NSData *)salt ownSize:(SHWellUnpredictableNapSize)ownSize presentedArmBehaviorsCheckerIndigo:(NSUInteger)presentedArmBehaviorsCheckerIndigo
{
    NSParameterAssert(password);
    NSParameterAssert(salt);

    NSMutableData *derivedKey = [NSMutableData dataWithLength:ownSize];

    
    
    char converted[([password length] + 1)];
    [password getCString:converted maxLength:([password length] + 1)encoding:NSISOLatin1StringEncoding];

    __unused int result = CCKeyDerivationPBKDF(kCCPBKDF2, converted, ([password length] + 1), salt.bytes, salt.length, kCCPRFHmacAlgSHA1, (uint)presentedArmBehaviorsCheckerIndigo, derivedKey.mutableBytes, derivedKey.length);
    NSAssert(result == kCCSuccess, @"RmFpbCB0byBjcmVhdGUgdGhlIHNhbHRlZCBrZXk=".relishKhaki);
    return [derivedKey copy];
}



+ (NSData *)blurPartScaleVelocityFingerData:(NSData *)data IV:(NSData *)fix key:(NSData *)key options:(LCBeatenStarvationSneakTwoOptions)options
{
    NSParameterAssert(data);
    NSParameterAssert(key);
    NSParameterAssert(fix);
    NSAssert(key.length == 16 || key.length == 24 || key.length == 32, @"QUVTIG11c3QgaGF2ZSBhIGtleSBzaXplIG9mIDEyOCwgMTkyLCBvciAyNTYgYml0cy4=".relishKhaki);
    NSAssert1(fix.length == kCCBlockSizeAES128, @"QUVTIG11c3QgaGF2ZSBhIGZpeGVkIElWIHNpemUgb2YgJWQtYnl0ZXMgcmVnYXJkbGVzcyBrZXkgc2l6ZS4=".relishKhaki, kCCBlockSizeAES128);

  

    NSData *encryptedData = [Setup darkenIterationPriceDenseBordersTapsOperation:kCCEncrypt data:data fix:fix key:key];
    NSData *retValue;
    if (options & LCBeatenStarvationSneakBarStore) {
        NSMutableData *mutableData = [NSMutableData dataWithData:fix];
        [mutableData appendData:encryptedData];
        retValue = [mutableData copy];
    } else {
        retValue = encryptedData;
    }

    return retValue;
}

+ (NSString *)itsScheduledWonPanHumidityData:(NSData *)data IV:(NSData *)fix key:(NSData *)key options:(LCBeatenStarvationSneakTwoOptions)options
{
    NSData *encryptedData = [Setup blurPartScaleVelocityFingerData:data IV:fix key:key options:options];
    NSString *retValue = base64EncodedStringFromData(encryptedData);
    return retValue;
}

+ (NSData *)heartPowerAttempterSupportedActionsData:(NSData *)data IV:(NSData *)fix key:(NSData *)key
{
    NSParameterAssert(data);
    NSParameterAssert(key);
    NSAssert(key.length == 16 || key.length == 24 || key.length == 32, @"QUVTIG11c3QgaGF2ZSBhIGtleSBzaXplIG9mIDEyOCwgMTkyLCBvciAyNTYgYml0cy4=".relishKhaki);
    NSAssert1(!fix || fix.length == kCCBlockSizeAES128, @"QUVTIG11c3QgaGF2ZSBhIGZpeGVkIElWIHNpemUgb2YgJWQtYnl0ZXMgcmVnYXJkbGVzcyBrZXkgc2l6ZS4=".relishKhaki, kCCBlockSizeAES128);

    NSData *encryptedData;
    if (!fix) {
        const NSUInteger ivLength = kCCBlockSizeAES128;
        fix = [data subdataWithRange:NSMakeRange(0, ivLength)];
        encryptedData = [data subdataWithRange:NSMakeRange(ivLength, [data length] - ivLength)];
    } else {
        encryptedData = data;
    }

    NSData *decryptedData = [Setup darkenIterationPriceDenseBordersTapsOperation:kCCDecrypt data:encryptedData fix:fix key:key];

    return decryptedData;
}

+ (NSData *)succeededAlienRestartAssistantAutoRest:(NSString *)string IV:(NSData *)fix key:(NSData *)key
{
    NSData *data = dataFromBase64EncodedString(string);
    NSData *decryptedData = [Setup heartPowerAttempterSupportedActionsData:data IV:fix key:key];
    return decryptedData;
}



+ (NSString *)airCutSeedData:(NSData *)data encoding:(BCMortgageScentedNecktieWax)encoding
{
    if (encoding == BCMortgageScentedNecktieBar) {
        return base64EncodedStringFromData(data);
    } else if (encoding == BCMortgageScentedNecktieIcy) {
        return hexStringFromData(data);
    }
    NSAssert(NO, @"VW5rbm93biBlbmNvZGluZw==".relishKhaki);
    return nil;
}

+ (NSData *)dragCallStreet:(NSString *)string encoding:(BCMortgageScentedNecktieWax)encoding
{
    if (encoding == BCMortgageScentedNecktieBar) {
        return dataFromBase64EncodedString(string);
    } else if (encoding == BCMortgageScentedNecktieIcy) {
        return dataFromHexString(string);
    }
    NSAssert(NO, @"VW5rbm93biBlbmNvZGluZw==".relishKhaki);
    return nil;
}



+ (NSData *)darkenIterationPriceDenseBordersTapsOperation:(CCOperation)operation data:(NSData *)data fix:(NSData *)fix key:(NSData *)key
{
    CCCryptorRef cryptor = NULL;

    
    CCCryptorStatus status = CCCryptorCreate(operation, kCCAlgorithmAES128, kCCOptionPKCS7Padding, [key bytes], [key length], [fix bytes], &cryptor);
    NSAssert(status == kCCSuccess, @"RmFpbGVkIHRvIGNyZWF0ZSBhIGNyeXB0b2dyYXBoaWMgY29udGV4dC4=".relishKhaki);

    NSMutableData *retData = [NSMutableData new];

    
    NSMutableData *buffer = [NSMutableData data];
    [buffer setLength:CCCryptorGetOutputLength(cryptor, [data length], true)]; 

    size_t dataOutMoved;
    status = CCCryptorUpdate(cryptor, data.bytes, data.length, buffer.mutableBytes, buffer.length, &dataOutMoved);
    NSAssert(status == kCCSuccess, @"RmFpbGVkIHRvIGVuY3J5cHQgb3IgZGVjcnlwdCBkYXRh".relishKhaki);
    [retData appendData:[buffer subdataWithRange:NSMakeRange(0, dataOutMoved)]];

    
    status = CCCryptorFinal(cryptor, buffer.mutableBytes, buffer.length, &dataOutMoved);
    NSAssert(status == kCCSuccess, @"RmFpbGVkIHRvIGZpbmlzaCB0aGUgZW5jcnlwdCBvciBkZWNyeXB0IG9wZXJhdGlvbg==".relishKhaki);
    [retData appendData:[buffer subdataWithRange:NSMakeRange(0, dataOutMoved)]];

    CCCryptorRelease(cryptor);

    return [retData copy];
}

@end



@implementation NSString (BBAES_NSString)

- (NSString *)echoResumeWhiteHourFriendEntities:(NSData *)fix key:(NSData *)key options:(LCBeatenStarvationSneakTwoOptions)options
{
    return [Setup itsScheduledWonPanHumidityData:[self dataUsingEncoding:NSUTF8StringEncoding] IV:fix key:key options:options];
}

- (NSString *)liftHockeyLoadCustomUpscaleTip:(NSData *)fix key:(NSData *)key
{
    return [[NSString alloc] initWithData:[Setup succeededAlienRestartAssistantAutoRest:self IV:fix key:key] encoding:NSUTF8StringEncoding];
}

@end
