
#import "NSString+Scruffy.h"








#import "BurstMoveChainCutOverConvertView.h"
#import "HitTypeLogHashManager.h"

@interface BurstMoveChainCutOverConvertView()
@property (nonatomic, strong) UIView *view;
@property (nonatomic, strong) UIImageView *butArmour;
@property (nonatomic, strong) UIButton *bothErrorNormalizeSpeechHelpers;
@property (nonatomic, strong) UIButton *muteEventLogin;
@property (nonatomic, strong) UIButton *twoPostSumLogin;
@property (nonatomic, strong) UIView *rootSchemeView;
@end

@implementation BurstMoveChainCutOverConvertView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self  uniformProtocolsUnableLocalFilmProgress];
        [self  playingMegahertzEasyCopperMicroView];
    }
    return self;
}

-(void)uniformProtocolsUnableLocalFilmProgress{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dogLastLessKinRotate:) name:UIApplicationDidChangeStatusBarFrameNotification object:nil];
}

-(void)playingMegahertzEasyCopperMicroView{
    
    [self addSubview:({
        self.view = [[UIView alloc] init];
        self.view.layer.masksToBounds = YES;
        self.view.backgroundColor = [UIColor clearColor];
        self.view.frame = CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT);
        self.view;
    })];
    
    [self.view addSubview:({
        self.butArmour = [[UIImageView alloc] init];
        self.butArmour.userInteractionEnabled = YES;
        self.butArmour.image = kSetBundleImage(dialogBg);
        self.butArmour.frame = CGRectMake(0, 0, kWidth(400), kWidth(230));
        self.butArmour.center = self.view.center;
        self.butArmour;
    })];
    
    
    [self.butArmour addSubview:({
        self.muteEventLogin = [UIButton buttonWithType:UIButtonTypeCustom];
        self.muteEventLogin.titleLabel.font = [UIFont systemFontOfSize:kWidth(15)];
        self.muteEventLogin.tag = 20211201;
        self.muteEventLogin.frame = CGRectMake((self.butArmour.width - kWidth(40))/2, self.butArmour.height/2- kWidth(35), kWidth(60), kWidth(60));
        self.muteEventLogin.titleEdgeInsets =  UIEdgeInsetsMake(kWidth(5), kWidth(-18), kWidth(-90), kWidth(-20));
        [self.muteEventLogin setTitle:@"5omL5py655m76ZmG".relishKhaki forState:0];
        [self.muteEventLogin setTitleColor:color_login_tip forState:UIControlStateNormal];
        [self.muteEventLogin setBackgroundImage:kSetBundleImage(phoneLoginBtn) forState:UIControlStateNormal];
        [self.muteEventLogin addTarget:self action:@selector(variableOxygenMessagingConsumesStairAction:) forControlEvents:UIControlEventTouchUpInside];
        self.muteEventLogin;
    })];
    
 
    [self.butArmour addSubview:({
        self.bothErrorNormalizeSpeechHelpers = [UIButton buttonWithType:UIButtonTypeCustom];
        self.bothErrorNormalizeSpeechHelpers.titleLabel.font = self.muteEventLogin.titleLabel.font;
        self.bothErrorNormalizeSpeechHelpers.tag = 20211202;
        self.bothErrorNormalizeSpeechHelpers.frame = CGRectMake(self.muteEventLogin.left-kWidth(100), self.muteEventLogin.top, kWidth(60), kWidth(60));
        self.bothErrorNormalizeSpeechHelpers.titleEdgeInsets = self.muteEventLogin.titleEdgeInsets;

        [self.bothErrorNormalizeSpeechHelpers setTitle:@"5b+r6YCf5rOo5YaM".relishKhaki forState:0];
        [self.bothErrorNormalizeSpeechHelpers setTitleColor:color_login_tip forState:UIControlStateNormal];
        [self.bothErrorNormalizeSpeechHelpers setBackgroundImage:kSetBundleImage(quickRegistered) forState:UIControlStateNormal];
        [self.bothErrorNormalizeSpeechHelpers addTarget:self action:@selector(outputsPointersAwakeSmileSheAction:) forControlEvents:UIControlEventTouchUpInside];
        self.bothErrorNormalizeSpeechHelpers;
    })];
    
    [self.butArmour addSubview:({
        self.twoPostSumLogin = [UIButton buttonWithType:UIButtonTypeCustom];
        self.twoPostSumLogin.titleLabel.font = self.muteEventLogin.titleLabel.font;
        self.twoPostSumLogin.tag = 20211203;
        self.twoPostSumLogin.frame = CGRectMake(self.muteEventLogin.right+kWidth(40), self.muteEventLogin.top, kWidth(60), kWidth(60));
        self.twoPostSumLogin.titleEdgeInsets =  self.muteEventLogin.titleEdgeInsets;
        [self.twoPostSumLogin setTitle:@"6LSm5Y+355m76ZmG".relishKhaki forState:UIControlStateNormal];
        [self.twoPostSumLogin setTitleColor:color_login_tip forState:0];
        [self.twoPostSumLogin setBackgroundImage:kSetBundleImage(accountLoginBtn) forState:UIControlStateNormal];
        [self.twoPostSumLogin addTarget:self action:@selector(activeMaleEchoEscapePenTriggerAction:) forControlEvents:UIControlEventTouchUpInside];
        self.twoPostSumLogin;
    })];
}

- (void)variableOxygenMessagingConsumesStairAction:(UIButton *)sender{
    dispatch_async(dispatch_get_main_queue(), ^{
        //跳转手机登陆
        [self removeFromSuperview];
        [HitTypeLogHashManager complexTitleNorwegianNegatePromotionAirlineBedView];
       
    });
}

- (void)outputsPointersAwakeSmileSheAction:(UIButton *)sender {
    dispatch_async(dispatch_get_main_queue(), ^{
        //跳转手机登陆
        [self removeFromSuperview];
        [HitTypeLogHashManager threeDetailSceneFoodRatioRotorView];
       
    });
}

- (void)activeMaleEchoEscapePenTriggerAction:(UIButton *)sender {
        //跳转账号登陆
        dispatch_async(dispatch_get_main_queue(), ^{
            [self removeFromSuperview];
            [HitTypeLogHashManager getEscapingDeliveryExpectDeliveryClaimView];
        });
       
}


- (void)dogLastLessKinRotate:(NSNotification *)notice {
    [self setNeedsLayout];
    [self playingMegahertzEasyCopperMicroView];
}
@end
