
#import "NSString+Scruffy.h"








#import "VibrancyCreateCapDialogIterateView.h"
#import "RepeatOrangeLooperObservingInterior.h"
#define kIconWidth kWidth(35)
#define kIconHeight kWidth(35)
#define kDuration 0.3
#define kHidenFloatView @"SElERU5GTE9BVFZJRVc=".relishKhaki

@interface VibrancyCreateCapDialogIterateView()
@property (nonatomic, strong) UIImageView *introAll;
@end


@implementation VibrancyCreateCapDialogIterateView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self exportUpdatesView];
        
        UITapGestureRecognizer *tapAction = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(sigmaLawAction:)];
        [self addGestureRecognizer:tapAction];
        
        UIPanGestureRecognizer *panAction = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(activityAction:)];
        [self addGestureRecognizer:panAction];
        
        [self performSelector:@selector(flushAcuteOurBufferEventFunkFrame:) withObject:kHidenFloatView afterDelay:3.0];
    }
    return self;
}

-(void)exportUpdatesView{
    self.backgroundColor = [UIColor clearColor];
    self.layer.masksToBounds = YES;
    self.userInteractionEnabled = YES;
    [self addSubview:({
        self.introAll = [[UIImageView alloc] init];
        self.introAll.frame = CGRectMake(kWidth(5), kWidth(5), kWidth(60), kWidth(60));
        self.introAll;
    })];
    //根据实名。绑定手机。我的消息列表，公众号是否查看
    NSString * idCard = [[RepeatOrangeLooperObservingInterior manager].userInfo objectForKey:@"aWRDYXJk".relishKhaki];
    NSString * mobile = [[RepeatOrangeLooperObservingInterior manager].userInfo objectForKey:@"bW9iaWxl".relishKhaki];
    
    NSString * oneClickStr = @"b25lQ2xpY2s=".relishKhaki;
    NSString *fixQuitBus = [[RepeatOrangeLooperObservingInterior manager].userInfo objectForKey:@"dXNlcl9uYW1l".relishKhaki];
    NSString *newsAccountID = [NSString stringWithFormat:@"JUAlQA==".relishKhaki,oneClickStr,fixQuitBus];
    NSUserDefaults *wayforloginAccount = [NSUserDefaults standardUserDefaults];
    NSString *openStateAccount = [wayforloginAccount objectForKey:newsAccountID];
    
    
    NSString *liveDegrees = [[RepeatOrangeLooperObservingInterior manager].theCautionInfo objectForKey:@"d3hfcHVibGljX25hbWU=".relishKhaki];
    NSString *newsCodeID = [NSString stringWithFormat:@"JUAlQA==".relishKhaki,liveDegrees,fixQuitBus];
    NSUserDefaults *wayforloginCode = [NSUserDefaults standardUserDefaults];
    NSString *openStateCode = [wayforloginCode objectForKey:newsCodeID];
    

    //没有认证。 没有绑定手机。  有消息没读。显示红点
    if ((kStringIsNull(idCard) || kStringIsNull(mobile))&& ([RepeatOrangeLooperObservingInterior alienQuerying]||![@"b3BlbkFjY291bnRNZW51".relishKhaki isEqualToString:openStateAccount]||![@"b3BlblB1YmxpY0NvZGU=".relishKhaki isEqualToString:openStateCode])) {
        self.introAll.image = kSetBundleImage(floatRedImg);
    }else{
        
        if ([RepeatOrangeLooperObservingInterior alienQuerying]||![@"b3BlblB1YmxpY0NvZGU=".relishKhaki isEqualToString:openStateCode]) {
            self.introAll.image = kSetBundleImage(floatRedImg);
        } else{
       
            self.introAll.image = kSetBundleImage(floatImg);
        }
        
        
    }
}


- (void)sigmaLawAction:(UITapGestureRecognizer *)sender {
    if (self.alpha != 1) {
        [self prettyRecoveryTrustHaveNormalRestartView];
        [UIView animateWithDuration:0.2 animations:^{
            self.alpha = 1;
            CGPoint YYJLObj_NewCenter = self.center;
            YYJLObj_NewCenter.x = YYJLObj_NewCenter.x == kWidth(15) ? kIconWidth : SCREENWIDTH - kIconWidth;
            self.center = CGPointMake(YYJLObj_NewCenter.x, YYJLObj_NewCenter.y);
        }];
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.5f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self performSelector:@selector(flushAcuteOurBufferEventFunkFrame:) withObject:kHidenFloatView afterDelay:3.0];
        });
    } else {

        //点击跳转用户中心界面
        dispatch_async(dispatch_get_main_queue(), ^{
            [HitTypeLogHashManager cancelRetainPlateDomainStatementView];
            [self removeFromSuperview];
        });
    }
}



- (void)activityAction:(UIPanGestureRecognizer *)sender {
    CGPoint panPoint = [sender locationInView:[UIApplication sharedApplication].keyWindow];
    [UIView animateWithDuration:0.15f animations:^{
        self.center = CGPointMake(panPoint.x, panPoint.y);
        
    }];
    
    if(sender.state == UIGestureRecognizerStateBegan) {
        self.alpha = 1;
        [self prettyRecoveryTrustHaveNormalRestartView];
    } else if (sender.state == UIGestureRecognizerStateEnded) {
        [self discountsFairGaussianReturnedPurposeGain:panPoint];
        [self performSelector:@selector(flushAcuteOurBufferEventFunkFrame:) withObject:kHidenFloatView afterDelay:3.0];
    }
}


- (void)discountsFairGaussianReturnedPurposeGain:(CGPoint)panPoint{
    if(panPoint.x <= SCREENWIDTH / 2) {
        if (panPoint.x < kIconWidth && panPoint.y > SCREENHEIGHT - kIconHeight) {
            [UIView animateWithDuration:kDuration animations:^{
                self.center = CGPointMake(kIconWidth, SCREENHEIGHT - kIconHeight);
            }];
        } else {
            CGFloat pointy = panPoint.y < kIconHeight ? kIconHeight : (panPoint.y >= SCREENHEIGHT - kIconHeight ? SCREENHEIGHT - kIconHeight : panPoint.y);
            [UIView animateWithDuration:kDuration animations:^{
                self.center = CGPointMake(kIconWidth, pointy);
            }];
        }
    } else if(panPoint.x > SCREENWIDTH / 2) {
        if (panPoint.x > SCREENWIDTH - kIconWidth && panPoint.y < kIconHeight) {
            [UIView animateWithDuration:kDuration animations:^{
                self.center = CGPointMake(SCREENWIDTH - kIconWidth, kIconHeight);
            }];
        } else {
            CGFloat pointy = panPoint.y > SCREENHEIGHT - kIconHeight ? SCREENHEIGHT - kIconHeight : (panPoint.y <= kIconHeight ? kIconHeight : panPoint.y);
            [UIView animateWithDuration:kDuration animations:^{
                self.center = CGPointMake(SCREENWIDTH - kIconWidth, pointy);
            }];
        }
    }
    NSUserDefaults *FLObj_iconPosition = [NSUserDefaults standardUserDefaults];
    [FLObj_iconPosition setObject:[NSString stringWithFormat:@"JWxm".relishKhaki,self.frame.origin.x] forKey:@"RkxPYmpfaW9jblg=".relishKhaki];
    [FLObj_iconPosition setObject:[NSString stringWithFormat:@"JWxm".relishKhaki,self.frame.origin.y] forKey:@"RkxPYmpfaW9jblk=".relishKhaki];
}


- (void)flushAcuteOurBufferEventFunkFrame:(CGRect *)frame {
    [UIView animateWithDuration:0.2 animations:^{
        self.alpha = 0.3;
        CGPoint YYJLObj_NewCenter = self.center;
        YYJLObj_NewCenter.x = YYJLObj_NewCenter.x <= 100.00 ? kWidth(15) : SCREENWIDTH;
        self.center = CGPointMake(YYJLObj_NewCenter.x, YYJLObj_NewCenter.y);
    }];
    
}


- (void)prettyRecoveryTrustHaveNormalRestartView {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(hiddenFloatViewWithFrame:) object:kHidenFloatView];
}

@end
