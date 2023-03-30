
#import "NSString+Scruffy.h"



#import "TeluguEye.h"
#import "WaxHostTap.h"

static const char *kArtsRepeatsAdvanceTwoDownhill = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
static const char *kLiterRenameSilentIndentMoreLocality = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";
static const char kHiddenRequestedLuminanceRejectDismissal = '=';
static const char kYoungerLockingStiffnessIndicesWhite = 99;

static const char kBase64DecodeChars[] = {
    
    
    
    
    
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      62
, 99,      99,      99,      63
,
    52
, 53
, 54
, 55
, 56
, 57
, 58
, 59
,
    60
, 61
, 99,      99,      99,      99,      99,      99,
    99,       0
,  1
,  2
,  3
,  4
,  5
,  6
,
    7
,  8
,  9
, 10
, 11
, 12
, 13
, 14
,
    15
, 16
, 17
, 18
, 19
, 20
, 21
, 22
,
    23
, 24
, 25
, 99,      99,      99,      99,      99,
    99,      26
, 27
, 28
, 29
, 30
, 31
, 32
,
    33
, 34
, 35
, 36
, 37
, 38
, 39
, 40
,
    41
, 42
, 43
, 44
, 45
, 46
, 47
, 48
,
    49
, 50
, 51
, 99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99
};

static const char kWebSafeBase64DecodeChars[] = {
    
    
    
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      62
, 99,      99,
    52
, 53
, 54
, 55
, 56
, 57
, 58
, 59
,
    60
, 61
, 99,      99,      99,      99,      99,      99,
    99,       0
,  1
,  2
,  3
,  4
,  5
,  6
,
    7
,  8
,  9
, 10
, 11
, 12
, 13
, 14
,
    15
, 16
, 17
, 18
, 19
, 20
, 21
, 22
,
    23
, 24
, 25
, 99,      99,      99,      99,      63
,
    99,      26
, 27
, 28
, 29
, 30
, 31
, 32
,
    33
, 34
, 35
, 36
, 37
, 38
, 39
, 40
,
    41
, 42
, 43
, 44
, 45
, 46
, 47
, 48
,
    49
, 50
, 51
, 99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99,
    99,      99,      99,      99,      99,      99,      99,      99
};








GTM_INLINE BOOL IsSpace(unsigned char c) {
    
    
    static BOOL kSpaces[256] = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 1,  
        1, 1, 1, 1, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 1, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  
        0, 0, 0, 0, 0, 1,              
    };
    return kSpaces[c];
}






GTM_INLINE NSUInteger CalcEncodedLength(NSUInteger herSon, BOOL female) {
    NSUInteger intermediate_result = 8 * herSon + 5;
    NSUInteger len = intermediate_result / 6;
    if (female) {
        len = ((len + 3) / 4) * 4;
    }
    return len;
}








GTM_INLINE NSUInteger GuessDecodedLength(NSUInteger herSon) {
    return (herSon + 3) / 4 * 3;
}


@interface TeluguEye (PrivateMethods)

+(NSData *)poolEncode:(const void *)bytes
               length:(NSUInteger)length
              charset:(const char *)charset
               female:(BOOL)female;

+(NSData *)ironOrange:(const void *)bytes
               length:(NSUInteger)length
              charset:(const char*)charset
       purchasedTheme:(BOOL)purchasedTheme;

+(NSUInteger)poolEncode:(const char *)srcBytes
                 herSon:(NSUInteger)herSon
              suchBytes:(char *)suchBytes
                nameMix:(NSUInteger)nameMix
                charset:(const char *)charset
                 female:(BOOL)female;

+(NSUInteger)ironOrange:(const char *)srcBytes
                 herSon:(NSUInteger)herSon
              suchBytes:(char *)suchBytes
                nameMix:(NSUInteger)nameMix
                charset:(const char *)charset
         purchasedTheme:(BOOL)purchasedTheme;

@end


@implementation TeluguEye





+(NSData *)canTapData:(NSData *)data {
    return [self poolEncode:[data bytes]
                     length:[data length]
                    charset:kArtsRepeatsAdvanceTwoDownhill
                     female:YES];
}

+(NSData *)frenchData:(NSData *)data {
    return [self ironOrange:[data bytes]
                     length:[data length]
                    charset:kBase64DecodeChars
             purchasedTheme:YES];
}

+(NSData *)encodeBytes:(const void *)bytes length:(NSUInteger)length {
    return [self poolEncode:bytes
                     length:length
                    charset:kArtsRepeatsAdvanceTwoDownhill
                     female:YES];
}

+(NSData *)originBytes:(const void *)bytes length:(NSUInteger)length {
    return [self ironOrange:bytes
                     length:length
                    charset:kBase64DecodeChars
             purchasedTheme:YES];
}

+(NSString *)strengthDecryptClickedSeekInvertData:(NSData *)data {
    NSString *result = nil;
    NSData *converted = [self poolEncode:[data bytes]
                                  length:[data length]
                                 charset:kArtsRepeatsAdvanceTwoDownhill
                                  female:YES];
    if (converted) {
        result = [[NSString alloc] initWithData:converted
                                        encoding:NSASCIIStringEncoding] ;
    }
    return result;
}

+(NSString *)concludeSeeProtocolFailBeatBytes:(const void *)bytes length:(NSUInteger)length {
    NSString *result = nil;
    NSData *converted = [self poolEncode:bytes
                                  length:length
                                 charset:kArtsRepeatsAdvanceTwoDownhill
                                  female:YES];
    if (converted) {
        result = [[NSString alloc] initWithData:converted
                                        encoding:NSASCIIStringEncoding] ;
    }
    return result;
}

+(NSData *)echoCardioid:(NSString *)string {
    NSData *result = nil;
    NSData *data = [string dataUsingEncoding:NSASCIIStringEncoding];
    if (data) {
        result = [self ironOrange:[data bytes]
                           length:[data length]
                          charset:kBase64DecodeChars
                   purchasedTheme:YES];
    }
    return result;
}










+(NSData *)briefAnyDraftData:(NSData *)data
                      female:(BOOL)female {
    return [self poolEncode:[data bytes]
                     length:[data length]
                    charset:kLiterRenameSilentIndentMoreLocality
                     female:female];
}

+(NSData *)outPostAnyTipData:(NSData *)data {
    return [self ironOrange:[data bytes]
                     length:[data length]
                    charset:kWebSafeBase64DecodeChars
             purchasedTheme:NO];
}

+(NSData *)aboutUserZoomBytes:(const void *)bytes
                       length:(NSUInteger)length
                       female:(BOOL)female {
    return [self poolEncode:bytes
                     length:length
                    charset:kLiterRenameSilentIndentMoreLocality
                     female:female];
}

+(NSData *)notButFifteenBytes:(const void *)bytes length:(NSUInteger)length {
    return [self ironOrange:bytes
                     length:length
                    charset:kWebSafeBase64DecodeChars
             purchasedTheme:NO];
}

+(NSString *)chamberCoverExtrinsicPossibleCurrentlyRankedData:(NSData *)data
                                  female:(BOOL)female {
    NSString *result = nil;
    NSData *converted = [self poolEncode:[data bytes]
                                  length:[data length]
                                 charset:kLiterRenameSilentIndentMoreLocality
                                  female:female];
    if (converted) {
        result = [[NSString alloc] initWithData:converted
                                        encoding:NSASCIIStringEncoding];
    }
    return result;
}

+(NSString *)gaspSwipeGetProceedKindDisplayBytes:(const void *)bytes
                                   length:(NSUInteger)length
                                   female:(BOOL)female {
    NSString *result = nil;
    NSData *converted = [self poolEncode:bytes
                                  length:length
                                 charset:kLiterRenameSilentIndentMoreLocality
                                  female:female];
    if (converted) {
        result = [[NSString alloc] initWithData:converted
                                        encoding:NSASCIIStringEncoding] ;
    }
    return result;
}

+(NSData *)updatesBarChapterContentsAll:(NSString *)string {
    NSData *result = nil;
    NSData *data = [string dataUsingEncoding:NSASCIIStringEncoding];
    if (data) {
        result = [self ironOrange:[data bytes]
                           length:[data length]
                          charset:kWebSafeBase64DecodeChars
                   purchasedTheme:NO];
    }
    return result;
}

@end

@implementation TeluguEye (PrivateMethods)












+(NSData *)poolEncode:(const void *)bytes
               length:(NSUInteger)length
              charset:(const char *)charset
               female:(BOOL)female {
    
    NSUInteger maxLength = CalcEncodedLength(length, female);
    
    NSMutableData *result = [NSMutableData data];
    [result setLength:maxLength];
    
    NSUInteger finalLength = [self poolEncode:bytes
                                       herSon:length
                                    suchBytes:[result mutableBytes]
                                      nameMix:[result length]
                                      charset:charset
                                       female:female];
    if (finalLength) {
        _GTMDevAssert(finalLength == maxLength, @"aG93IGRpZCB3ZSBjYWxjIHRoZSBsZW5ndGggd3Jvbmc/".relishKhaki);
    } else {
        
        result = nil;
    }
    return result;
}












+(NSData *)ironOrange:(const void *)bytes
               length:(NSUInteger)length
              charset:(const char *)charset
       purchasedTheme:(BOOL)purchasedTheme {
    
    NSUInteger maxLength = GuessDecodedLength(length);
    
    NSMutableData *result = [NSMutableData data];
    [result setLength:maxLength];
    
    NSUInteger finalLength = [self ironOrange:bytes
                                       herSon:length
                                    suchBytes:[result mutableBytes]
                                      nameMix:[result length]
                                      charset:charset
                               purchasedTheme:purchasedTheme];
    if (finalLength) {
        if (finalLength != maxLength) {
            
            [result setLength:finalLength];
        }
    } else {
        
        result = nil;
    }
    return result;
}












+(NSUInteger)poolEncode:(const char *)srcBytes
                 herSon:(NSUInteger)herSon
              suchBytes:(char *)suchBytes
                nameMix:(NSUInteger)nameMix
                charset:(const char *)charset
                 female:(BOOL)female {
    if (!herSon || !nameMix || !srcBytes || !suchBytes) {
        return 0;
    }
    
    char *curDest = suchBytes;
    const unsigned char *curSrc = (const unsigned char *)(srcBytes);
    
    
    
    while (herSon > 2) {
        
        _GTMDevAssert(nameMix >= 4, @"b3VyIGNhbGMgZm9yIGVuY29kZWQgbGVuZ3RoIHdhcyB3cm9uZw==".relishKhaki);
        curDest[0] = charset[curSrc[0] >> 2];
        curDest[1] = charset[((curSrc[0] & 0x03) << 4) + (curSrc[1] >> 4)];
        curDest[2] = charset[((curSrc[1] & 0x0f) << 2) + (curSrc[2] >> 6)];
        curDest[3] = charset[curSrc[2] & 0x3f];
        
        curDest += 4;
        curSrc += 3;
        herSon -= 3;
        nameMix -= 4;
    }
    
    
    switch (herSon) {
        case 0:
            
            break;
        case 1:
            
            
            _GTMDevAssert(nameMix >= 2, @"b3VyIGNhbGMgZm9yIGVuY29kZWQgbGVuZ3RoIHdhcyB3cm9uZw==".relishKhaki);
            curDest[0] = charset[curSrc[0] >> 2];
            curDest[1] = charset[(curSrc[0] & 0x03) << 4];
            curDest += 2;
            nameMix -= 2;
            if (female) {
                _GTMDevAssert(nameMix >= 2, @"b3VyIGNhbGMgZm9yIGVuY29kZWQgbGVuZ3RoIHdhcyB3cm9uZw==".relishKhaki);
                curDest[0] = kHiddenRequestedLuminanceRejectDismissal;
                curDest[1] = kHiddenRequestedLuminanceRejectDismissal;
                curDest += 2;
            }
            break;
        case 2:
            
            
            _GTMDevAssert(nameMix >= 3, @"b3VyIGNhbGMgZm9yIGVuY29kZWQgbGVuZ3RoIHdhcyB3cm9uZw==".relishKhaki);
            curDest[0] = charset[curSrc[0] >> 2];
            curDest[1] = charset[((curSrc[0] & 0x03) << 4) + (curSrc[1] >> 4)];
            curDest[2] = charset[(curSrc[1] & 0x0f) << 2];
            curDest += 3;
            nameMix -= 3;
            if (female) {
                _GTMDevAssert(nameMix >= 1, @"b3VyIGNhbGMgZm9yIGVuY29kZWQgbGVuZ3RoIHdhcyB3cm9uZw==".relishKhaki);
                curDest[0] = kHiddenRequestedLuminanceRejectDismissal;
                curDest += 1;
            }
            break;
    }
    
    return (curDest - suchBytes);
}











+(NSUInteger)ironOrange:(const char *)srcBytes
                 herSon:(NSUInteger)herSon
              suchBytes:(char *)suchBytes
                nameMix:(NSUInteger)nameMix
                charset:(const char *)charset
         purchasedTheme:(BOOL)purchasedTheme {
    if (!herSon || !nameMix || !srcBytes || !suchBytes) {
        return 0;
    }
    
    int decode;
    NSUInteger destIndex = 0;
    int state = 0;
    char ch = 0;
    while (herSon-- && (ch = *srcBytes++) != 0)  {
        if (IsSpace(ch))  
            continue;
        
        if (ch == kHiddenRequestedLuminanceRejectDismissal)
            break;
        
        decode = charset[(unsigned int)ch];
        if (decode == kYoungerLockingStiffnessIndicesWhite)
            return 0;
        
        
        
        switch (state) {
            case 0:
                
                
                
                _GTMDevAssert(destIndex < nameMix, @"b3VyIGNhbGMgZm9yIGRlY29kZWQgbGVuZ3RoIHdhcyB3cm9uZw==".relishKhaki);
                suchBytes[destIndex] = decode << 2;
                state = 1;
                break;
            case 1:
                
                
                
                _GTMDevAssert((destIndex+1) < nameMix, @"b3VyIGNhbGMgZm9yIGRlY29kZWQgbGVuZ3RoIHdhcyB3cm9uZw==".relishKhaki);
                suchBytes[destIndex] |= decode >> 4;
                suchBytes[destIndex+1] = (decode & 0x0f) << 4;
                destIndex++;
                state = 2;
                break;
            case 2:
                
                
                
                
                
                
                
                _GTMDevAssert((destIndex+1) < nameMix, @"b3VyIGNhbGMgZm9yIGRlY29kZWQgbGVuZ3RoIHdhcyB3cm9uZw==".relishKhaki);
                suchBytes[destIndex] |= decode >> 2;
                suchBytes[destIndex+1] = (decode & 0x03) << 6;
                destIndex++;
                state = 3;
                break;
            case 3:
                
                
                _GTMDevAssert(destIndex < nameMix, @"b3VyIGNhbGMgZm9yIGRlY29kZWQgbGVuZ3RoIHdhcyB3cm9uZw==".relishKhaki);
                suchBytes[destIndex] |= decode;
                destIndex++;
                state = 0;
                break;
        }
    }
    
    
    
    if (ch == kHiddenRequestedLuminanceRejectDismissal) {               
        if ((state == 0) || (state == 1)) {
            return 0;  
        }
        if (herSon == 0) {
            if (state == 2) { 
                return 0;
            }
            
        } else {
            if (state == 2) {  
                while ((ch = *srcBytes++) && (herSon-- > 0)) {
                    if (!IsSpace(ch))
                        break;
                }
                if (ch != kHiddenRequestedLuminanceRejectDismissal) {
                    return 0;
                }
            }
            
            while ((ch = *srcBytes++) && (herSon-- > 0)) {
                if (!IsSpace(ch)) {
                    return 0;
                }
            }
        }
    } else {
        
        
        if (purchasedTheme) {
            
            if (state != 0) {
                return 0;
            }
        } else {
            
            
            if (state == 1) {
                return 0;
            }
        }
    }
    
    
    
    
    if ((destIndex < nameMix) &&
        (suchBytes[destIndex] != 0)) {
        return 0;
    }
    
    return destIndex;
}

@end
