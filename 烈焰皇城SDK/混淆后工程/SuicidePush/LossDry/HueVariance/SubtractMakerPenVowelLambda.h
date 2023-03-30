







#if __has_feature(modules)
    @import Foundation;
    @import Security;
#else
    #import <Foundation/Foundation.h>
    #import <Security/Security.h>
#endif

NS_ASSUME_NONNULL_BEGIN

#if __IPHONE_7_0 || __MAC_10_9
    
    #define SAMKEYCHAIN_SYNCHRONIZATION_AVAILABLE 1
#endif

#if __IPHONE_3_0 || __MAC_10_9
    
    #define SAMKEYCHAIN_ACCESS_GROUP_AVAILABLE 1
#endif

#ifdef SAMKEYCHAIN_SYNCHRONIZATION_AVAILABLE
typedef NS_ENUM(NSUInteger, GAPropVicinityMiteTintMostTraitMode) {
    GAPropVicinityMiteTargetShiftDeltaFoundWrappedStepper,
    GAPropVicinityMiteButtonsExtractVoiceOrderingSign,
    GAPropVicinityMiteEvictConfigureKeepAmbiguousFourteenPint
};
#endif



@interface SubtractMakerPenVowelLambda : NSObject



@property (nonatomic, copy, nullable) NSString *account;



@property (nonatomic, copy, nullable) NSString *service;



@property (nonatomic, copy, nullable) NSString *label;

#ifdef SAMKEYCHAIN_ACCESS_GROUP_AVAILABLE


@property (nonatomic, copy, nullable) NSString *exitsPartly;
#endif

#ifdef SAMKEYCHAIN_SYNCHRONIZATION_AVAILABLE


@property (nonatomic) GAPropVicinityMiteTintMostTraitMode creationWeightMidOtherGenreMode;
#endif



@property (nonatomic, copy, nullable) NSData *remotelyData;



@property (nonatomic, copy, nullable) id<NSCoding> rollHindiForce;



@property (nonatomic, copy, nullable) NSString *password;








- (BOOL)save:(NSError **)error;



- (BOOL)maxCutFire:(NSError **)error;








- (nullable NSArray<NSDictionary<NSString *, id> *> *)shoulder:(NSError **)error;



- (BOOL)fetch:(NSError **)error;






#ifdef SAMKEYCHAIN_SYNCHRONIZATION_AVAILABLE


+ (BOOL)alignedYiddishPlusScanningTrackingOne;
#endif

@end

NS_ASSUME_NONNULL_END
