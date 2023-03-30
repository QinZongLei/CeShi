
#import "NSString+Scruffy.h"


#import "VoiceMetadataThickFarPrintableHostView.h"
#import "HitTypeLogHashManager.h"


@interface VoiceMetadataThickFarPrintableHostView ()<UITextViewDelegate>
@property (nonatomic, strong) UIView *view;
@property (nonatomic, strong) UIImageView *butArmour;
@property (nonatomic, strong) UILabel * fixSurge;
@property (nonatomic, strong) UITextView *wasLockHer;
@property (nonatomic, strong) UILabel *oldPaper;
@property (nonatomic, strong) UILabel *fullCan;
@property (nonatomic, strong) UIButton *fitHyphen;
@property (nonatomic, strong) UIButton *endPasswords;


@end


@implementation VoiceMetadataThickFarPrintableHostView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self  uniformProtocolsUnableLocalFilmProgress];
        [self opaqueRelayCapableBoxTamilView];
    }
    return self;
}

//添加通知，横竖屏幕切换刷新界面
-(void)uniformProtocolsUnableLocalFilmProgress{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dogLastLessKinRotate:) name:UIApplicationDidChangeStatusBarFrameNotification object:nil];
}
//创建View
-(void)opaqueRelayCapableBoxTamilView{
   
    [self addSubview:({
        self.view = [[UIView alloc] init];
        self.view.layer.masksToBounds = YES;
        self.view.frame =  self.bounds;
        self.view.backgroundColor =  [[UIColor blackColor] colorWithAlphaComponent:0.9];
        self.view;
    })];
    
    [self.view addSubview:({
        self.butArmour = [[UIImageView alloc] init];
        self.butArmour.userInteractionEnabled = YES;
        self.butArmour.layer.cornerRadius = kWidth(5);
        self.butArmour.clipsToBounds =YES;
        self.butArmour.frame = CGRectMake(0, 0, kWidth(320), kWidth(300));
        self.butArmour.center = self.view.center;
        self.butArmour.backgroundColor = [UIColor whiteColor];
        self.butArmour;
    })];
    
    [self.butArmour addSubview:({
        self.fixSurge = [[UILabel alloc] init];
        self.fixSurge .text = @"5Liq5Lq65L+h5oGv5L+d5oqk5o+Q56S6".relishKhaki;
        self.fixSurge.frame = CGRectMake((self.butArmour.width-kWidth(200))/2, kWidth(20), kWidth(200), kWidth(20));
        self.fixSurge.textColor = RGBHEX(0x000000);
        self.fixSurge.textAlignment =NSTextAlignmentCenter;
        self.fixSurge.font = [UIFont boldSystemFontOfSize:kWidth(18)];
        self.fixSurge;
    })];

    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    
    [paragraphStyle setLineSpacing:7];
    NSString *userTip = @"5oiR5Lus6Z2e5bi46YeN6KeG5oKo55qE5Liq5Lq65L+h5oGv5ZKM6ZqQ56eB5L+d5oqk77yM5Li65LqG5L+d6Zqc5oKo55qE5Liq5Lq65p2D55uK77yM5Zyo5L2/55So5YmN77yM6K+35Yqh5b+F6ZiF6K+744CK55So5oi35Y2P6K6u44CL5ZKM44CK6ZqQ56eB5pS/562W44CL".relishKhaki;
   NSMutableAttributedString *linkStr = [[NSMutableAttributedString alloc] initWithString:userTip];
    //绑定标签跳转
        [linkStr addAttribute:NSLinkAttributeName
                      value:@"cHJvdG9jb2w6Ly8=".relishKhaki
                      range:[[linkStr string] rangeOfString:@"44CK55So5oi35Y2P6K6u44CL".relishKhaki]];
    [linkStr addAttribute:NSLinkAttributeName
                  value:@"cHJvdG9jb2xQcml2YWN5Oi8v".relishKhaki
                  range:[[linkStr string] rangeOfString:@"44CK6ZqQ56eB5pS/562W44CL".relishKhaki]];
    
    [self.butArmour addSubview:({
        self.wasLockHer = [[UITextView alloc ] init];
        self.wasLockHer.delegate = self;
        self.wasLockHer.editable = NO;
        self.wasLockHer.scrollEnabled=NO;
        self.wasLockHer.attributedText = linkStr;
        self.wasLockHer.backgroundColor = [UIColor whiteColor];
        self.wasLockHer.linkTextAttributes = @{NSForegroundColorAttributeName: RGBHEX(0x000000)};
        self.wasLockHer.font = [UIFont systemFontOfSize:kWidth(15)];
        self.wasLockHer.frame = CGRectMake(kWidth(15), self.fixSurge.bottom+kWidth(10), self.butArmour.width-kWidth(20), kWidth(75));
        self.wasLockHer;
    })];
    
    
    [self.butArmour addSubview:({
        self.fullCan = [[UILabel alloc] init];
        self.fullCan.text = @"SURGQTog6K6+6YWN5qCH6K+G77yM55So5LqO5o+Q5L6b5Liq5oCn5YyW5pyN5Yqh77yM5YeP5bCR5peg5YWz5YaF5a655o6o6I2Q".relishKhaki;
        self.fullCan.textColor = [UIColor lightGrayColor];
        self.fullCan.numberOfLines = 0;
        self.fullCan.font = [UIFont systemFontOfSize:kWidth(14)];
        self.fullCan.frame = CGRectMake(self.wasLockHer.left, self.wasLockHer.bottom+kWidth(5), self.wasLockHer.width, kWidth(40));
        self.fullCan;
    })];
    
    
    [self.butArmour addSubview:({
        self.oldPaper = [[UILabel alloc] init];
        self.oldPaper.text = @"5aaC5p6c5oKo5ZCM5oSP5q2k5Y2P6K6u77yM6K+354K55Ye74oCd5ZCM5oSP4oCc5oyJ6ZKu".relishKhaki;
        self.oldPaper.font = [UIFont systemFontOfSize:kWidth(15)];
        self.oldPaper.frame = CGRectMake(self.wasLockHer.left, self.fullCan.bottom+kWidth(5), self.wasLockHer.width, kWidth(20));
        self.oldPaper;
    })];
    
    [self.butArmour addSubview:({
        self.fitHyphen = [UIButton buttonWithType:UIButtonTypeCustom];
        self.fitHyphen.titleLabel.font = [UIFont systemFontOfSize:kWidth(15)];
        self.fitHyphen.layer.cornerRadius = kWidth(20);
        self.fitHyphen.frame = CGRectMake(self.wasLockHer.left, self.oldPaper.bottom+kWidth(10), self.butArmour.width-kWidth(30), kWidth(40));
        self.fitHyphen.clipsToBounds = YES;
        self.fitHyphen.tag = 202111;
        [self.fitHyphen setTitle:@"5ZCM5oSP".relishKhaki forState:UIControlStateNormal];
        [self.fitHyphen setBackgroundColor:[UIColor colorWithRed:232.0/255.0 green:61.0/255.0 blue:64.0/255.0 alpha:1.0f]];
        [self.fitHyphen setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.fitHyphen addTarget:self action:@selector(ourNotRuleAction:) forControlEvents:UIControlEventTouchUpInside];
        self.fitHyphen;
    })];
    
    [self.butArmour addSubview:({
        self.endPasswords = [UIButton buttonWithType:UIButtonTypeCustom];
        self.endPasswords.titleLabel.font = [UIFont systemFontOfSize:kWidth(15)];
        self.endPasswords.layer.cornerRadius = kWidth(20);
        self.endPasswords.clipsToBounds = YES;
        self.endPasswords.frame = CGRectMake((self.butArmour.width-kWidth(80))/2, self.fitHyphen.bottom+kWidth(10), kWidth(80), kWidth(30));
        self.endPasswords.tag = 202112;
        [self.endPasswords setBackgroundColor:[UIColor clearColor]];
        [self.endPasswords setTitle:@"5LiN5ZCM5oSP".relishKhaki forState:UIControlStateNormal];
        [self.endPasswords setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [self.endPasswords addTarget:self action:@selector(symbolTabBedAction:) forControlEvents:UIControlEventTouchUpInside];
    
        self.endPasswords;
    })];
    
    
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange{
    return  YES;
}


- (void)ourNotRuleAction:(UIButton *)sender {
    //同意
    dispatch_async(dispatch_get_main_queue(), ^{
        NSUserDefaults *wayforFirstLogin = [NSUserDefaults standardUserDefaults];
        [wayforFirstLogin setValue:@"Zmlyc3RMb2dpbg==".relishKhaki forKey:@"Zmlyc3RMYXVuY2g=".relishKhaki];
        [self removeFromSuperview];
    });
}

- (void)symbolTabBedAction:(UIButton *)sender {
        //不同意
        dispatch_async(dispatch_get_main_queue(), ^{
            [self removeFromSuperview];
            [HitTypeLogHashManager dryFocalBasicTreeConstructFarsiView];
        });
       
}



- (void)dogLastLessKinRotate:(NSNotification *)notice {
    [self setNeedsLayout];
    [self opaqueRelayCapableBoxTamilView];
}


@end
