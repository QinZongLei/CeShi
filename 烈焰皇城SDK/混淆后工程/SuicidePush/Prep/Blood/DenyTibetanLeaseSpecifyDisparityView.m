
#import "NSString+Scruffy.h"








#import "DenyTibetanLeaseSpecifyDisparityView.h"
#import "RepeatOrangeLooperObservingInterior.h"

@interface DenyTibetanLeaseSpecifyDisparityView()
@property (nonatomic, strong) UIImageView *hueIronRatio;
@end

@implementation DenyTibetanLeaseSpecifyDisparityView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UITapGestureRecognizer *tapAction = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(weekDiskAction:)];
        [self addGestureRecognizer:tapAction];
       
        [self realmRouteTrialReturnedIndianView];
    }
    return self;
}


-(void)realmRouteTrialReturnedIndianView{
    NSString *fixQuitBus = [[RepeatOrangeLooperObservingInterior manager].userInfo objectForKey:@"dXNlcl9uYW1l".relishKhaki];
    NSString *zongRead=[[NSUserDefaults standardUserDefaults] objectForKey:fixQuitBus];
    
    [self addSubview:({
        self.hueIronRatio = [[UIImageView alloc] init];
        self.hueIronRatio.frame =CGRectMake(kWidth(5), kWidth(5), kWidth(70), kWidth(70));
        self.hueIronRatio;
    })];
    
    if (![@"R2lmdEZsb2F0UmVhZEhpZGVu".relishKhaki isEqualToString:zongRead]) {
        self.hueIronRatio.image = kSetBundleImage(commentsRedImg);
    } else {
        self.hueIronRatio.image = kSetBundleImage(commentsImg);
    }
    
    //十秒自动关闭
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 *NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self removeFromSuperview];
    });
}

- (void)weekDiskAction:(UITapGestureRecognizer *)sender {
    
    //返回
    dispatch_async(dispatch_get_main_queue(), ^{
        [self removeFromSuperview];
        [HitTypeLogHashManager preventShareAlongsideCallRootCapView];
        NSString *fixQuitBus = [[RepeatOrangeLooperObservingInterior manager].userInfo objectForKey:@"dXNlcl9uYW1l".relishKhaki];
        [[NSUserDefaults standardUserDefaults]setObject:@"R2lmdEZsb2F0UmVhZEhpZGVu".relishKhaki forKey:fixQuitBus];
        [[NSUserDefaults standardUserDefaults]synchronize];
    });
}

@end
