
#import "NSString+Scruffy.h"








#import "WrongAppearInsertingForMobileDecimalView.h"
#import "UIImageView+WebCache.h"

@interface WrongAppearInsertingForMobileDecimalView()<UITextViewDelegate>
@property (nonatomic, strong) UIButton *hallCert;
@property (nonatomic, strong) UILabel *readPicture;
@property (nonatomic, strong) UITextView *wasLockHer;
@property (nonatomic, strong) UIImageView *secondPubCode;
@end

@implementation WrongAppearInsertingForMobileDecimalView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self  uniformProtocolsUnableLocalFilmProgress];
        [self penAmpereWordBasalHexView];
    }
    return self;
}

-(void)uniformProtocolsUnableLocalFilmProgress{
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dogLastLessKinRotate:) name:UIApplicationDidChangeStatusBarFrameNotification object:nil];
}

-(void)penAmpereWordBasalHexView{
    self.enhanced =@"5YWs5ZGK6K+m5oOF".relishKhaki;
    self.fixSurge.frame = CGRectMake((self.butArmour.width-kWidth(120))/2, kWidth(70), kWidth(120), kWidth(20));
    [self.butArmour addSubview:({
        self.hallCert = [UIButton buttonWithType:UIButtonTypeCustom];
        self.hallCert.frame = CGRectMake(self.butArmour.width - kWidth(40), kWidth(35), kWidth(35), kWidth(35));
        self.hallCert.tag = 20211201;
        [self.hallCert setImage:kSetBundleImage(backBtn) forState:UIControlStateNormal];
        [self.hallCert addTarget:self action:@selector(boxCutScanAction:) forControlEvents:UIControlEventTouchUpInside];
        self.hallCert;
    })];
    
    
    [self.butArmour addSubview:({
        self.fixSurge= [[UILabel alloc] init];
        self.fixSurge.font = [UIFont systemFontOfSize: kWidth(16)];
        self.fixSurge.textColor = [UIColor redColor];
        self.fixSurge.frame =  CGRectMake(kWidth(55),self.moodSee.bottom+kWidth(30),self.butArmour.width - kWidth(90), kWidth(20));

        self.fixSurge;
    })];
    
    [self.butArmour addSubview:({
        self.wasLockHer= [[UITextView alloc] init];
        self.wasLockHer.font = [UIFont systemFontOfSize: kWidth(16)];
        self.wasLockHer.textColor = color_agreement_tip;
        self.wasLockHer.backgroundColor = [UIColor clearColor];
        self.wasLockHer.delegate = self;
        self.wasLockHer.editable = YES;
        self.wasLockHer.frame = CGRectMake(kWidth(50), self.fixSurge.bottom+kWidth(5), self.butArmour.width - kWidth(90), kWidth(100));

        self.wasLockHer;
    })];
    
  
    [self.butArmour addSubview:({
        self.secondPubCode = [[UIImageView alloc] init];
        self.secondPubCode.backgroundColor = [UIColor clearColor];
        self.secondPubCode.frame =  CGRectMake((self.butArmour.width-kWidth(100))/2, self.wasLockHer.bottom+kWidth(5), kWidth(100), kWidth(100));

        self.secondPubCode;
    })];
    
}

- (void)boxCutScanAction:(UIButton *)sender {
        //返回
        dispatch_async(dispatch_get_main_queue(), ^{
            [HitTypeLogHashManager usageEvaluatedGatheringCivilMagneticView];
            [self removeFromSuperview];
        });
}


- (void)setChlorideDict:(NSMutableDictionary *)chlorideDict{
    _chlorideDict = chlorideDict;
    NSString *title = [_chlorideDict objectForKey:@"dGl0bGU=".relishKhaki];
    NSString *content = [_chlorideDict objectForKey:@"Y29udGVudA==".relishKhaki];
    NSString *codeUrl = [_chlorideDict objectForKey:@"d3hfcHVibGljX3VybA==".relishKhaki];
    if (!kStringIsNull(title)) {
        self.fixSurge.text = [NSString stringWithFormat:@"JUA=".relishKhaki,title];
    }
    if (!kStringIsNull(content)) {
        self.wasLockHer.text = [NSString stringWithFormat:@"JUA=".relishKhaki,content];
       
    }
    if (!kStringIsNull(codeUrl)) {
        [self.secondPubCode sd_setImageWithURL:[NSURL URLWithString:codeUrl]];
        self.secondPubCode.backgroundColor = [UIColor clearColor];
    }else{
        self.wasLockHer.frame = CGRectMake(kWidth(50), self.fixSurge.bottom+kWidth(5), self.butArmour.width - kWidth(90), kWidth(180));;

        self.secondPubCode.frame = CGRectMake((self.butArmour.width-kWidth(100))/2, self.wasLockHer.bottom + kWidth(5), kWidth(5), kWidth(5));
    }
}

-(BOOL)textViewShouldBeginEditing:(UITextView *)textView{
     return NO;
}

- (void)dogLastLessKinRotate:(NSNotification *)notice {
    [self setNeedsLayout];
    [self penAmpereWordBasalHexView];
}


@end
