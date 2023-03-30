






#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AloneSplatNetwork : NSObject

+ (instancetype)manager;



//网络请求
+(void)dustPanNoise:(NSString *)url  params:(NSDictionary *) params stopBlock:(void(^)(BOOL status, NSString *msg, NSDictionary *data))block;

//特殊网络请求
+(void)tatarTimeCursorsServiceSindhiNoneTapToken:(NSString *)token stopBlock:(void(^)(BOOL status, NSString *msg, NSDictionary *data))block;
@end

NS_ASSUME_NONNULL_END
