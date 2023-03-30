
#import "NSString+Scruffy.h"








#import "IllGreekLeakyManager.h"
#import "LateShowAcuteManager.h"
#import "RepeatOrangeLooperObservingInterior.h"
#import <StoreKit/StoreKit.h>

@interface IllGreekLeakyManager()<SKProductsRequestDelegate,SKPaymentTransactionObserver>
@property (nonatomic, copy) void (^scaleView)(BOOL status,NSString *msg);
@property (nonatomic, strong) NSString *peerPurpose;
@property (nonatomic, strong) NSString *rectumAirSevenDividerPriority;
@property (nonatomic, strong) NSString *deviceid;
@property (nonatomic, strong) NSString *currencytype;
@property (nonatomic, strong) NSString *currencyamount;
@property (nonatomic, strong) NSString *paymenttype;
@property (nonatomic, strong) NSString *hotKey;
@property (nonatomic, strong) NSString *dataeyeid;
@property (nonatomic, strong) NSString *roleLevel;

@end

@implementation IllGreekLeakyManager

+ (instancetype)sharedInstance {
    static IllGreekLeakyManager *_instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone:NULL] init];
        [[SKPaymentQueue defaultQueue] addTransactionObserver:_instance];
    });
    return _instance;
}


+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [self sharedInstance];
}

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

- (id)mutableCopyWithZone:(NSZone *)zone {
    return self;
}

+ (void)drumGlucoseFallbackChromaLineBarsInfo:(NSDictionary *)orderInfo artIts:(void (^)(BOOL, NSString * _Nonnull))handle{
    if (handle) {
        [IllGreekLeakyManager sharedInstance].scaleView = handle;
    }
    NSString *price = [NSString stringWithFormat:@"JUA=".relishKhaki, [orderInfo valueForKey:@"Y29zdA==".relishKhaki]];
    NSString *roleID = [NSString stringWithFormat:@"JUA=".relishKhaki, [orderInfo valueForKey:@"cm9sZUlE".relishKhaki]];
    
    NSString *tempProductId = [NSString stringWithFormat:@"JUA=".relishKhaki, [orderInfo valueForKey:@"Z29vZHNJRA==".relishKhaki]];
    NSString *deviceid = [NSString stringWithFormat:@"JUA=".relishKhaki, [orderInfo valueForKey:@"ZGV2aWNlaWQ=".relishKhaki]];
    NSString *currentType = [NSString stringWithFormat:@"JUA=".relishKhaki, [orderInfo valueForKey:@"Y3VycmVudFR5cGU=".relishKhaki]];
    NSString *currencyAmount = [NSString stringWithFormat:@"JUA=".relishKhaki, [orderInfo valueForKey:@"Y3VycmVuY3lBbW91bnQ=".relishKhaki]];
    NSString *paymentType = [NSString stringWithFormat:@"JUA=".relishKhaki, [orderInfo valueForKey:@"cGF5bWVudFR5cGU=".relishKhaki]];
    NSString *hotKey = [NSString stringWithFormat:@"JUA=".relishKhaki, [orderInfo valueForKey:@"aG90S2V5".relishKhaki]];
    NSString *dataeyeid = [NSString stringWithFormat:@"JUA=".relishKhaki, [orderInfo valueForKey:@"ZGF0YWV5ZWlk".relishKhaki]];
    NSString *roleLevel = [NSString stringWithFormat:@"JUA=".relishKhaki, [orderInfo valueForKey:@"cm9sZUxldmVs".relishKhaki]];
   
    if (kStringIsNull(tempProductId)) {
        if (handle) {
            handle(NO,@"5ZWG5ZOBSUTkuI3lrZjlnKjvvIE=".relishKhaki);
        }
        return;
    }
    NSMutableDictionary *mOrderInfo = [NSMutableDictionary dictionaryWithDictionary:orderInfo];
    
    [LateShowAcuteManager tryWatchedState:price roleLevel:roleLevel roleID:roleID stopBlock:^(BOOL status, NSString * _Nonnull msg, NSDictionary * _Nonnull dic) {
        if (status) {
            
            //调用接口成功的
            NSString *pyStateStr = [NSString stringWithFormat:@"JUA=".relishKhaki,[dic objectForKey:@"cGF5U3RhdGU=".relishKhaki]];
            if ([@"1" isEqualToString:pyStateStr]) {
                [LateShowAcuteManager convertedSubsetRangeEnglishSuggested:mOrderInfo stopBlock:^(BOOL status, NSString * _Nonnull msg, NSDictionary * _Nonnull dic) {
                    if (status) {
                        NSString *peerPurpose = [NSString stringWithFormat:@"JUA=".relishKhaki,[dic valueForKey:@"b3JkZXJfaWQ=".relishKhaki]];
                        if (kStringIsNull(peerPurpose)) {
                            if (handle) {
                                handle(NO,@"6K6i5Y2V5LiN5a2Y5Zyo77yB".relishKhaki);
                            }
                            return;
                        }
                        //调用内购
                        [IllGreekLeakyManager sharedInstance].rectumAirSevenDividerPriority = tempProductId;
                        [IllGreekLeakyManager sharedInstance].peerPurpose = peerPurpose;
                        [IllGreekLeakyManager sharedInstance].deviceid = deviceid;
                        [IllGreekLeakyManager sharedInstance].currencytype = currentType;
                        [IllGreekLeakyManager sharedInstance].currencyamount = price;
                        [IllGreekLeakyManager sharedInstance].paymenttype = paymentType;
                        [IllGreekLeakyManager sharedInstance].hotKey = hotKey;
                        [IllGreekLeakyManager sharedInstance].dataeyeid = dataeyeid;
                        [IllGreekLeakyManager sharedInstance].roleLevel = roleLevel;
                        NSArray *YYJLObj_Products = [NSArray arrayWithObjects:[IllGreekLeakyManager sharedInstance].rectumAirSevenDividerPriority, nil];
                        NSSet *YYJLObj_ProductSet = [NSSet setWithArray:YYJLObj_Products];
                        SKProductsRequest *YYJLObj_ProductRequest = [[SKProductsRequest alloc] initWithProductIdentifiers:YYJLObj_ProductSet];
                        YYJLObj_ProductRequest.delegate = [IllGreekLeakyManager sharedInstance];
                        [YYJLObj_ProductRequest start];
                        
                    }else{
                        if (handle) {
                            handle(NO,@"5pSv5LuY5aSx6LSl77yB".relishKhaki);
                        }
                    }
                }];
            }else if([@"2" isEqualToString:pyStateStr]){
                [LateShowAcuteManager convertedSubsetRangeEnglishSuggested:mOrderInfo stopBlock:^(BOOL status, NSString * _Nonnull msg, NSDictionary * _Nonnull dic) {
                    if (status) {
                        NSString *peerPurpose = [NSString stringWithFormat:@"JUA=".relishKhaki,[dic valueForKey:@"cGF5X3VybA==".relishKhaki]];
                        if (kStringIsNull(peerPurpose)) {
                            if (handle) {
                                handle(NO,@"6K6i5Y2V5LiN5a2Y5Zyo77yB".relishKhaki);
                            }
                            return;
                        }
                        [DryTapSafeToast permuteGeneratesSlashBigSupplyKinAction];
                        //跳转帮助界面
                        [HitTypeLogHashManager writtenEngineView:peerPurpose];
                        
                    }else{
                        if (handle) {
                            handle(NO,@"5pSv5LuY5aSx6LSl77yB".relishKhaki);
                        }
                    }
                }];
            }
            
        }else{
            //调用失败
            if (handle) {
                handle(NO,@"5pSv5LuY5aSx6LSl77yB".relishKhaki);
            }
        }
    }];
    
}


- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response {
    NSArray *products = response.products;
    if (products.count < 1) {
        if ([IllGreekLeakyManager sharedInstance].scaleView) {
            [IllGreekLeakyManager sharedInstance].scaleView(NO,@"6LSt5Lmw5ZWG5ZOB5LiN5a2Y5Zyo77yB".relishKhaki);
        }
        return;
    }
    SKProduct *currentProduct = nil;
    for (SKProduct *product in products) {
        if ([product.productIdentifier isEqualToString:[IllGreekLeakyManager sharedInstance].rectumAirSevenDividerPriority]) {
            currentProduct = product;
        }
    }
    
    NSMutableDictionary *YYJLObj_localInfo = [[NSMutableDictionary alloc] init];
    [YYJLObj_localInfo setValue:[IllGreekLeakyManager sharedInstance].peerPurpose forKey:@"b3JkZXJpZA==".relishKhaki];
    [YYJLObj_localInfo setValue:[IllGreekLeakyManager sharedInstance].deviceid forKey:@"ZGV2aWNlaWQ=".relishKhaki];
    [YYJLObj_localInfo setValue:[IllGreekLeakyManager sharedInstance].currencytype forKey:@"Y3VycmVuY3l0eXBl".relishKhaki];
    [YYJLObj_localInfo setValue:[IllGreekLeakyManager sharedInstance].currencyamount forKey:@"Y3VycmVuY3lhbW91bnQ=".relishKhaki];
    [YYJLObj_localInfo setValue:[IllGreekLeakyManager sharedInstance].paymenttype forKey:@"cGF5bWVudHR5cGU=".relishKhaki];
    [YYJLObj_localInfo setValue:[IllGreekLeakyManager sharedInstance].hotKey forKey:@"aG90S2V5".relishKhaki];
    [YYJLObj_localInfo setValue:[IllGreekLeakyManager sharedInstance].dataeyeid forKey:@"ZGF0YWV5ZWlk".relishKhaki];
    [YYJLObj_localInfo setValue:[IllGreekLeakyManager sharedInstance].currencyamount forKey:@"Y29zdA==".relishKhaki];
    NSString *fixQuitBus = [[RepeatOrangeLooperObservingInterior manager].userInfo objectForKey:@"dXNlcl9uYW1l".relishKhaki];
    [YYJLObj_localInfo setValue:fixQuitBus forKey:@"dXNlcm5hbWU=".relishKhaki];
    [YYJLObj_localInfo setValue:[RepeatOrangeLooperObservingInterior manager].areThat forKey:@"aWRmdg==".relishKhaki];
    NSMutableDictionary *YYJLObj_SaveInfo = [NSMutableDictionary dictionaryWithDictionary:[[NSUserDefaults standardUserDefaults] valueForKey:kSaveOrderInfo]];
    [YYJLObj_SaveInfo setValue:YYJLObj_localInfo forKey:[IllGreekLeakyManager sharedInstance].peerPurpose];
    [[NSUserDefaults standardUserDefaults] setValue:YYJLObj_SaveInfo forKey:kSaveOrderInfo];
    [[NSUserDefaults standardUserDefaults] setValue:fixQuitBus forKey:@"aXNVc2VybmFtZQ==".relishKhaki];
    [[NSUserDefaults standardUserDefaults] synchronize];
    if (currentProduct) {
        SKMutablePayment *payment = [SKMutablePayment paymentWithProduct:currentProduct];
        [[SKPaymentQueue defaultQueue] addPayment:payment];
    }
}


- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray<SKPaymentTransaction *> *)transactions
{
    for (SKPaymentTransaction *transaction in transactions) {
        switch (transaction.transactionState) {
            case SKPaymentTransactionStatePurchased: {
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                NSData *data = [NSData dataWithContentsOfURL:[[NSBundle mainBundle] appStoreReceiptURL]];
                NSString *domainsData = [data base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
                NSString *payId = transaction.transactionIdentifier;
                if (kStringIsNull(domainsData)) {
                    if ([IllGreekLeakyManager sharedInstance].scaleView) {
                        [IllGreekLeakyManager sharedInstance].scaleView(NO,@"5pSv5LuY5aSx6LSl5LqG77yM6K+36IGU57O75a6i5pyN77yB".relishKhaki);
                    }
                    return;
                }
                NSString *YYJLObj_localKey = [NSString stringWithFormat:@"JUA=".relishKhaki,[IllGreekLeakyManager sharedInstance].peerPurpose];
                [IllGreekLeakyManager bottomPanoramaDetermineMindInsertionShowingSticky:YYJLObj_localKey herRedoCriteriaTeamTurkmenData:domainsData showSemanticShearParentalRebuildCurrently:payId];
                [IllGreekLeakyManager realmDescribePagerPinkManyMoire:YYJLObj_localKey herRedoCriteriaTeamTurkmenData:domainsData];
            }
                break;
            case SKPaymentTransactionStatePurchasing:
                break;
            case SKPaymentTransactionStateRestored: {
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                if ([IllGreekLeakyManager sharedInstance].scaleView) {
                    [IllGreekLeakyManager sharedInstance].scaleView(NO,@"5pSv5LuY5aSx6LSl77yB".relishKhaki);
                }
                }
                break;
            case SKPaymentTransactionStateFailed: {
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                if (transaction.error.code == SKErrorPaymentCancelled) {
                    if ([IllGreekLeakyManager sharedInstance].scaleView) {
                        [IllGreekLeakyManager sharedInstance].scaleView(NO,@"5oKo5Y+W5raI5LqG5pys5qyh5pSv5LuY77yB".relishKhaki);
                      }
                } else{
                if ([IllGreekLeakyManager sharedInstance].scaleView) {
                    [IllGreekLeakyManager sharedInstance].scaleView(NO,@"5pSv5LuY5aSx6LSl77yB".relishKhaki);
                  }
                }
            }
                break;
            default:
                break;
        }
   
    }
    
}

+ (void)bottomPanoramaDetermineMindInsertionShowingSticky:(NSString *)params herRedoCriteriaTeamTurkmenData:(NSString *)domainsData showSemanticShearParentalRebuildCurrently:(NSString *)transactionid{
    
    NSMutableDictionary *YYJLObj_LocalInfo = [NSMutableDictionary dictionaryWithDictionary:[[NSUserDefaults standardUserDefaults] valueForKey:kSaveOrderInfo]];
    if ([[YYJLObj_LocalInfo allKeys] containsObject:params]) {
        NSMutableDictionary *mOrderInfo = [NSMutableDictionary dictionaryWithDictionary:[YYJLObj_LocalInfo valueForKey:params]];
        [mOrderInfo setValue:domainsData forKey:@"cGF5bG9hZA==".relishKhaki];
        [mOrderInfo setValue:transactionid forKey:@"dHJhbnNhY3Rpb25pZA==".relishKhaki];
        [YYJLObj_LocalInfo setValue:mOrderInfo forKey:params];
    }
    
    [[NSUserDefaults standardUserDefaults] setValue:YYJLObj_LocalInfo forKey:kSaveOrderInfo];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)realmDescribePagerPinkManyMoire:(NSString *)orderid herRedoCriteriaTeamTurkmenData:(NSString *)domainsData {
    dispatch_async(dispatch_get_main_queue(), ^{
                
        NSMutableDictionary *YYJLObj_LocalInfo = [NSMutableDictionary dictionaryWithDictionary:[[NSUserDefaults standardUserDefaults] valueForKey:kSaveOrderInfo]];
        
        if ([[YYJLObj_LocalInfo allKeys] containsObject:orderid]) {
            NSMutableDictionary *mOrderInfo = [NSMutableDictionary dictionaryWithDictionary:[YYJLObj_LocalInfo valueForKey:orderid]];
            
            NSString *costStr = [NSString stringWithFormat:@"JUA=".relishKhaki,[mOrderInfo valueForKey:@"Y29zdA==".relishKhaki]];
            [mOrderInfo removeObjectForKey:@"Y29zdA==".relishKhaki];
            [mOrderInfo removeObjectForKey:@"cGF5bG9hZA==".relishKhaki];
            [mOrderInfo removeObjectForKey:@"aWRmdg==".relishKhaki];
            [mOrderInfo removeObjectForKey:@"dXNlcm5hbWU=".relishKhaki];
            
            [LateShowAcuteManager takeStoodSliceSameDocuments:mOrderInfo cost:costStr domainsData:domainsData stopBlock:^(BOOL status, NSString * _Nonnull msg) {
                if (status) {
                   
                    [[IllGreekLeakyManager sharedInstance] butDatabasesSandboxMatrixSoftwareInitial:orderid sendLevel:[IllGreekLeakyManager sharedInstance].roleLevel];
                    
                    NSMutableDictionary *YYJLObj_TempInfo = [NSMutableDictionary dictionaryWithDictionary:[[NSUserDefaults standardUserDefaults] valueForKey:kSaveOrderInfo]];
                    
                    [YYJLObj_TempInfo removeObjectForKey:orderid];
                    [[NSUserDefaults standardUserDefaults] setValue:YYJLObj_TempInfo forKey:kSaveOrderInfo];
                    [[NSUserDefaults standardUserDefaults] synchronize];
                }
                if ([IllGreekLeakyManager sharedInstance].scaleView) {
                    if (kStringIsNull(msg)) {
                        [IllGreekLeakyManager sharedInstance].scaleView(status,@"5pSv5LuY5oiQ5Yqf".relishKhaki);
                    } else {
                        
                        [IllGreekLeakyManager sharedInstance].scaleView(status,msg);
                    }
                    
                }
            }];
        }
    });
}


- (void)butDatabasesSandboxMatrixSoftwareInitial:(NSString *)orderID sendLevel:(NSString *)roleLevel {
    
    NSMutableDictionary *YYJLObj_PayQueryParams = [[NSMutableDictionary alloc] init];
    [YYJLObj_PayQueryParams setValue:orderID forKey:@"b3JkZXJfaWQ=".relishKhaki];
    [YYJLObj_PayQueryParams setValue:roleLevel forKey:@"cm9sZUxldmVs".relishKhaki];
    
    [LateShowAcuteManager duplicateUpsideZeroOutputParagraphState:YYJLObj_PayQueryParams stopBlock:^(BOOL status, NSString * _Nonnull msg) {
        //不做处理
        
    }];


}


//补单
+ (void)trapBeatScriptsMaskAgent{
    NSMutableDictionary *localInfo = [NSMutableDictionary dictionaryWithDictionary:[[NSUserDefaults standardUserDefaults] valueForKey:kSaveOrderInfo]];
    if (!kDictNotNull(localInfo)) {
        return;
    }
    dispatch_group_t group = dispatch_group_create();
    for (NSDictionary *orderInfo in [localInfo allValues]) {
        dispatch_group_enter(group);
        NSMutableDictionary *mOrderInfo = [NSMutableDictionary dictionaryWithDictionary:orderInfo];
        NSString *orderId = [NSString stringWithFormat:@"JUA=".relishKhaki,[orderInfo valueForKey:@"b3JkZXJpZA==".relishKhaki]];
        NSString *receipt = [NSString stringWithFormat:@"JUA=".relishKhaki,[orderInfo valueForKey:@"cGF5bG9hZA==".relishKhaki]];
        if (kStringIsNull(receipt) || kStringIsNull(orderId)) {
            dispatch_group_leave(group);
            continue;
        }
        NSString *costStr = [NSString stringWithFormat:@"JUA=".relishKhaki,[orderInfo valueForKey:@"Y29zdA==".relishKhaki]];
        [mOrderInfo removeObjectForKey:@"Y29zdA==".relishKhaki];
        [mOrderInfo removeObjectForKey:@"cGF5bG9hZA==".relishKhaki];

        [LateShowAcuteManager takeStoodSliceSameDocuments:mOrderInfo cost:costStr domainsData:receipt stopBlock:^(BOOL status, NSString * _Nonnull msg) {
            if (status) {
                
                NSMutableDictionary *tempInfo = [NSMutableDictionary dictionaryWithDictionary:[[NSUserDefaults standardUserDefaults] valueForKey:kSaveOrderInfo]];
                [tempInfo removeObjectForKey:orderId];
                [[NSUserDefaults standardUserDefaults] setValue:tempInfo forKey:kSaveOrderInfo];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
        }];
    }
}



@end
