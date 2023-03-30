
#import "NSString+Scruffy.h"








#import "AloneSplatNetwork.h"
#import "RepeatOrangeLooperObservingInterior.h"
#import "RecoveredWarpPreservesSlavicIntegral.h"
#import "RSA.h"

@implementation AloneSplatNetwork

static id instance = nil;

+ (instancetype)manager {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [self manager];
}

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

- (id)mutableCopyWithZone:(NSZone *)zone {
    return self;
}



+ (void)dustPanNoise:(NSString *)url params:(NSDictionary *)params stopBlock:(void (^)(BOOL, NSString * _Nonnull, NSDictionary * _Nonnull))block{
    [AloneSplatNetwork blockNeedCombineDispatchPlusGeometry:url barDaysRecordedVitalLose:params kinDownSlopeCacheNormalizeIntro:^(NSInteger resultCode, NSString * _Nonnull resultMsg, NSDictionary * _Nonnull resultData) {
        block(resultCode == 1,resultMsg,resultData);
    }];
}



+ (void)blockNeedCombineDispatchPlusGeometry:(NSString *)urlString barDaysRecordedVitalLose:(NSDictionary *)param kinDownSlopeCacheNormalizeIntro:(void(^)(NSInteger resultCode, NSString *resultMsg, NSDictionary *resultData))callback {
    
    NSString *hostUrlString = [NSString stringWithFormat:@"JUA=".relishKhaki, urlString];
  
    NSMutableDictionary *hostParmas = [NSMutableDictionary dictionaryWithDictionary:param];
   
  NSString *requestBody = [RecoveredWarpPreservesSlavicIntegral retSubgroupDictionary:hostParmas];
 
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:hostUrlString]];
    request.timeoutInterval = 30;
    request.HTTPMethod = @"UE9TVA==".relishKhaki;
    request.HTTPBody = [requestBody dataUsingEncoding:NSUTF8StringEncoding];
    [request setValue:@"YXBwbGljYXRpb24veC13d3ctZm9ybS11cmxlbmNvZGVk".relishKhaki forHTTPHeaderField:@"Q29udGVudC1UeXBl".relishKhaki];
    [[NSURLSession.sharedSession dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            if (callback) {
                callback(error.code, error.localizedDescription, @{});
            }
        } else {
            @try {
                NSDictionary *responeDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&error];
               
                NSString *code;
                NSString * msg;
                NSDictionary * stateDic;
                NSDictionary *resultDic;
                if (!kDictNotNull(responeDic)) {
                    stateDic=[responeDic objectForKey: @"c3RhdGU=".relishKhaki];
                    code = [stateDic objectForKey: @"c3RhdGU=".relishKhaki][@"Y29kZQ==".relishKhaki];
                    msg = [stateDic objectForKey: @"c3RhdGU=".relishKhaki][@"bXNn".relishKhaki];
                    resultDic  =[responeDic objectForKey: @"ZGF0YQ==".relishKhaki];
                    callback(code.integerValue,msg,resultDic);
                }else{
                    stateDic=[responeDic objectForKey: @"c3RhdGU=".relishKhaki];
                    code = [stateDic objectForKey: @"Y29kZQ==".relishKhaki];
                    msg = [stateDic objectForKey:@"bXNn".relishKhaki];
                    resultDic  =[responeDic objectForKey: @"ZGF0YQ==".relishKhaki];
                    callback(code.integerValue,msg,resultDic);
                }
                
            } @catch (NSException *exception) {
                if (callback) {
                    callback(19998, @"6Kej5a+G5aSx6LSl77yB".relishKhaki, @{});
                }
                
            } @finally {
                
            }
            
        }
    }] resume];
}


+ (void)tatarTimeCursorsServiceSindhiNoneTapToken:(NSString *)token stopBlock:(void (^)(BOOL, NSString * _Nonnull, NSDictionary * _Nonnull))block{
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:(id)self delegateQueue:nil];
    NSURL *url = [NSURL URLWithString:@"aHR0cHM6Ly9hcGktYWRzZXJ2aWNlcy5hcHBsZS5jb20vYXBpL3YxLw==".relishKhaki];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                               cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                           timeoutInterval:10.0];
    [request addValue:@"YXBwbGljYXRpb24vanNvbg==".relishKhaki forHTTPHeaderField:@"Q29udGVudC1UeXBl".relishKhaki];
    [request setHTTPMethod:@"UE9TVA==".relishKhaki];
    NSData* postData = [(id)token dataUsingEncoding:NSUTF8StringEncoding];
    [request setHTTPBody:postData];
    
    [[session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            //如果失败循环请求
            [self tatarTimeCursorsServiceSindhiNoneTapToken:token stopBlock:block];
            return;
        }
        NSError *resError;
        NSMutableDictionary *resDic = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&resError];
        
        if (kDictNotNull(resDic)) {
            //回调回去
            block(YES,@"6I635Y+W5oiQ5Yqf77yB".relishKhaki,resDic);
        }
    }] resume];
    
}




@end
