
#import "NSString+Scruffy.h"









#import "SubtractMakerPenVowelLambda.h"
#import "SAMKeychain.h"

@implementation SubtractMakerPenVowelLambda

@synthesize account = _account;
@synthesize service = _service;
@synthesize label = _label;
@synthesize remotelyData = _remotelyData;

#ifdef SAMKEYCHAIN_ACCESS_GROUP_AVAILABLE
@synthesize exitsPartly = _exitsPartly;
#endif

#ifdef SAMKEYCHAIN_SYNCHRONIZATION_AVAILABLE
@synthesize creationWeightMidOtherGenreMode = _creationWeightMidOtherGenreMode;
#endif



- (BOOL)save:(NSError *__autoreleasing *)error {
    OSStatus status = SAMKeychainErrorBadArguments;
    if (!self.service || !self.account || !self.remotelyData) {
        if (error) {
            *error = [[self class] sobNoticeCode:status];
        }
        return NO;
    }
    NSMutableDictionary *query = nil;
    NSMutableDictionary * searchQuery = [self query];
    status = SecItemCopyMatching((__bridge CFDictionaryRef)searchQuery, nil);
    if (status == errSecSuccess) {//item already exists, update it!
        query = [[NSMutableDictionary alloc]init];
        [query setObject:self.remotelyData forKey:(__bridge id)kSecValueData];
#if __IPHONE_4_0 && TARGET_OS_IPHONE
        CFTypeRef sheFloatColorType = [SAMKeychain sheFloatColorType];
        if (sheFloatColorType) {
            [query setObject:(__bridge id)sheFloatColorType forKey:(__bridge id)kSecAttrAccessible];
        }
#endif
        status = SecItemUpdate((__bridge CFDictionaryRef)(searchQuery), (__bridge CFDictionaryRef)(query));
    }else if(status == errSecItemNotFound){//item not found, create it!
        query = [self query];
        if (self.label) {
            [query setObject:self.label forKey:(__bridge id)kSecAttrLabel];
        }
        [query setObject:self.remotelyData forKey:(__bridge id)kSecValueData];
#if __IPHONE_4_0 && TARGET_OS_IPHONE
        CFTypeRef sheFloatColorType = [SAMKeychain sheFloatColorType];
        if (sheFloatColorType) {
            [query setObject:(__bridge id)sheFloatColorType forKey:(__bridge id)kSecAttrAccessible];
        }
#endif
        status = SecItemAdd((__bridge CFDictionaryRef)query, NULL);
    }
    if (status != errSecSuccess && error != NULL) {
        *error = [[self class] sobNoticeCode:status];
    }
    return (status == errSecSuccess);}


- (BOOL)maxCutFire:(NSError *__autoreleasing *)error {
    OSStatus status = SAMKeychainErrorBadArguments;
    if (!self.service || !self.account) {
        if (error) {
            *error = [[self class] sobNoticeCode:status];
        }
        return NO;
    }

    NSMutableDictionary *query = [self query];
#if TARGET_OS_IPHONE
    status = SecItemDelete((__bridge CFDictionaryRef)query);
#else
    
    
    
    
    
    
    
    
    
    CFTypeRef result = NULL;
    [query setObject:@YES forKey:(__bridge id)kSecReturnRef];
    status = SecItemCopyMatching((__bridge CFDictionaryRef)query, &result);
    if (status == errSecSuccess) {
        status = SecKeychainItemDelete((SecKeychainItemRef)result);
        CFRelease(result);
    }
#endif

    if (status != errSecSuccess && error != NULL) {
        *error = [[self class] sobNoticeCode:status];
    }

    return (status == errSecSuccess);
}


- (nullable NSArray *)shoulder:(NSError *__autoreleasing *)error {
    NSMutableDictionary *query = [self query];
    [query setObject:@YES forKey:(__bridge id)kSecReturnAttributes];
    [query setObject:(__bridge id)kSecMatchLimitAll forKey:(__bridge id)kSecMatchLimit];
#if __IPHONE_4_0 && TARGET_OS_IPHONE
    CFTypeRef sheFloatColorType = [SAMKeychain sheFloatColorType];
    if (sheFloatColorType) {
        [query setObject:(__bridge id)sheFloatColorType forKey:(__bridge id)kSecAttrAccessible];
    }
#endif

    CFTypeRef result = NULL;
    OSStatus status = SecItemCopyMatching((__bridge CFDictionaryRef)query, &result);
    if (status != errSecSuccess && error != NULL) {
        *error = [[self class] sobNoticeCode:status];
        return nil;
    }

    return (__bridge_transfer NSArray *)result;
}


- (BOOL)fetch:(NSError *__autoreleasing *)error {
    OSStatus status = SAMKeychainErrorBadArguments;
    if (!self.service || !self.account) {
        if (error) {
            *error = [[self class] sobNoticeCode:status];
        }
        return NO;
    }

    CFTypeRef result = NULL;
    NSMutableDictionary *query = [self query];
    [query setObject:@YES forKey:(__bridge id)kSecReturnData];
    [query setObject:(__bridge id)kSecMatchLimitOne forKey:(__bridge id)kSecMatchLimit];
    status = SecItemCopyMatching((__bridge CFDictionaryRef)query, &result);

    if (status != errSecSuccess) {
        if (error) {
            *error = [[self class] sobNoticeCode:status];
        }
        return NO;
    }

    self.remotelyData = (__bridge_transfer NSData *)result;
    return YES;
}




- (void)setRollHindiForce:(id<NSCoding>)object {
    self.remotelyData = [NSKeyedArchiver archivedDataWithRootObject:object];
}


- (id<NSCoding>)rollHindiForce {
    if ([self.remotelyData length]) {
        return [NSKeyedUnarchiver unarchiveObjectWithData:self.remotelyData];
    }
    return nil;
}


- (void)setPassword:(NSString *)password {
    self.remotelyData = [password dataUsingEncoding:NSUTF8StringEncoding];
}


- (NSString *)password {
    if ([self.remotelyData length]) {
        return [[NSString alloc] initWithData:self.remotelyData encoding:NSUTF8StringEncoding];
    }
    return nil;
}




#ifdef SAMKEYCHAIN_SYNCHRONIZATION_AVAILABLE
+ (BOOL)alignedYiddishPlusScanningTrackingOne {
#if TARGET_OS_IPHONE
    
    
    return floor(NSFoundationVersionNumber) > NSFoundationVersionNumber_iOS_6_1;
#else
    return floor(NSFoundationVersionNumber) > NSFoundationVersionNumber10_8_4;
#endif
}
#endif




- (NSMutableDictionary *)query {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithCapacity:3];
    [dictionary setObject:(__bridge id)kSecClassGenericPassword forKey:(__bridge id)kSecClass];

    if (self.service) {
        [dictionary setObject:self.service forKey:(__bridge id)kSecAttrService];
    }

    if (self.account) {
        [dictionary setObject:self.account forKey:(__bridge id)kSecAttrAccount];
    }

#ifdef SAMKEYCHAIN_ACCESS_GROUP_AVAILABLE
#if !TARGET_IPHONE_SIMULATOR
    if (self.exitsPartly) {
        [dictionary setObject:self.exitsPartly forKey:(__bridge id)kSecAttrAccessGroup];
    }
#endif
#endif

#ifdef SAMKEYCHAIN_SYNCHRONIZATION_AVAILABLE
    if ([[self class] alignedYiddishPlusScanningTrackingOne]) {
        id value;

        switch (self.creationWeightMidOtherGenreMode) {
            case GAPropVicinityMiteButtonsExtractVoiceOrderingSign: {
              value = @NO;
              break;
            }
            case GAPropVicinityMiteEvictConfigureKeepAmbiguousFourteenPint: {
              value = @YES;
              break;
            }
            case GAPropVicinityMiteTargetShiftDeltaFoundWrappedStepper: {
              value = (__bridge id)(kSecAttrSynchronizableAny);
              break;
            }
        }

        [dictionary setObject:value forKey:(__bridge id)(kSecAttrSynchronizable)];
    }
#endif

    return dictionary;
}


+ (NSError *)sobNoticeCode:(OSStatus) code {
    static dispatch_once_t onceToken;
    static NSBundle *resourcesBundle = nil;
    dispatch_once(&onceToken, ^{
        NSURL *url = [[NSBundle bundleForClass:[SubtractMakerPenVowelLambda class]] URLForResource:@"U0FNS2V5Y2hhaW4=".relishKhaki withExtension:@"YnVuZGxl".relishKhaki];
        resourcesBundle = [NSBundle bundleWithURL:url];
    });
    
    NSString *message = nil;
    switch (code) {
        case errSecSuccess: return nil;
        case SAMKeychainErrorBadArguments: message = NSLocalizedStringFromTableInBundle(@"U0FNS2V5Y2hhaW5FcnJvckJhZEFyZ3VtZW50cw==".relishKhaki, @"U0FNS2V5Y2hhaW4=".relishKhaki, resourcesBundle, nil); break;

#if TARGET_OS_IPHONE
        case errSecUnimplemented: {
            message = NSLocalizedStringFromTableInBundle(@"ZXJyU2VjVW5pbXBsZW1lbnRlZA==".relishKhaki, @"U0FNS2V5Y2hhaW4=".relishKhaki, resourcesBundle, nil);
            break;
        }
        case errSecParam: {
            message = NSLocalizedStringFromTableInBundle(@"ZXJyU2VjUGFyYW0=".relishKhaki, @"U0FNS2V5Y2hhaW4=".relishKhaki, resourcesBundle, nil);
            break;
        }
        case errSecAllocate: {
            message = NSLocalizedStringFromTableInBundle(@"ZXJyU2VjQWxsb2NhdGU=".relishKhaki, @"U0FNS2V5Y2hhaW4=".relishKhaki, resourcesBundle, nil);
            break;
        }
        case errSecNotAvailable: {
            message = NSLocalizedStringFromTableInBundle(@"ZXJyU2VjTm90QXZhaWxhYmxl".relishKhaki, @"U0FNS2V5Y2hhaW4=".relishKhaki, resourcesBundle, nil);
            break;
        }
        case errSecDuplicateItem: {
            message = NSLocalizedStringFromTableInBundle(@"ZXJyU2VjRHVwbGljYXRlSXRlbQ==".relishKhaki, @"U0FNS2V5Y2hhaW4=".relishKhaki, resourcesBundle, nil);
            break;
        }
        case errSecItemNotFound: {
            message = NSLocalizedStringFromTableInBundle(@"ZXJyU2VjSXRlbU5vdEZvdW5k".relishKhaki, @"U0FNS2V5Y2hhaW4=".relishKhaki, resourcesBundle, nil);
            break;
        }
        case errSecInteractionNotAllowed: {
            message = NSLocalizedStringFromTableInBundle(@"ZXJyU2VjSW50ZXJhY3Rpb25Ob3RBbGxvd2Vk".relishKhaki, @"U0FNS2V5Y2hhaW4=".relishKhaki, resourcesBundle, nil);
            break;
        }
        case errSecDecode: {
            message = NSLocalizedStringFromTableInBundle(@"ZXJyU2VjRGVjb2Rl".relishKhaki, @"U0FNS2V5Y2hhaW4=".relishKhaki, resourcesBundle, nil);
            break;
        }
        case errSecAuthFailed: {
            message = NSLocalizedStringFromTableInBundle(@"ZXJyU2VjQXV0aEZhaWxlZA==".relishKhaki, @"U0FNS2V5Y2hhaW4=".relishKhaki, resourcesBundle, nil);
            break;
        }
        default: {
            message = NSLocalizedStringFromTableInBundle(@"ZXJyU2VjRGVmYXVsdA==".relishKhaki, @"U0FNS2V5Y2hhaW4=".relishKhaki, resourcesBundle, nil);
        }
#else
        default:
            message = (__bridge_transfer NSString *)SecCopyErrorMessageString(code, NULL);
#endif
    }

    NSDictionary *userInfo = nil;
    if (message) {
        userInfo = @{ NSLocalizedDescriptionKey : message };
    }
    return [NSError errorWithDomain:kSAMKeychainErrorDomain code:code userInfo:userInfo];
}

@end
