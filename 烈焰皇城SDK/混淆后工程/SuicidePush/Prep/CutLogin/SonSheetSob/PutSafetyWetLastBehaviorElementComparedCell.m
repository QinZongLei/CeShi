
#import "NSString+Scruffy.h"








#import "PutSafetyWetLastBehaviorElementComparedCell.h"
#import "RepeatOrangeLooperObservingInterior.h"

@interface PutSafetyWetLastBehaviorElementComparedCell()
@property (nonatomic, strong) UIImageView *fitness;
@property (nonatomic, strong) UILabel *subAtomName;
@property (nonatomic, strong) UIButton *getMild;
@property (nonatomic, strong) UIView *moodSee;
@end

@implementation PutSafetyWetLastBehaviorElementComparedCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
        [self uniformProtocolsUnableLocalFilmProgress];
        [self stylusPickPingView];
    }
    return self;
}

- (void)uniformProtocolsUnableLocalFilmProgress {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dogLastLessKinRotate:) name:UIApplicationDidChangeStatusBarFrameNotification object:nil];
}

-(void)stylusPickPingView{
    [self.contentView addSubview:({
        self.fitness = [[UIImageView alloc] initWithImage:kSetBundleImage(accountLoginBtn)];
        self.fitness.frame = CGRectMake(kWidth(12), kWidth(10), kWidth(16), kWidth(18));
        self.fitness;
    })];
    
    [self.contentView addSubview:({
        self.subAtomName = [[UILabel alloc] init];
        self.subAtomName.frame = CGRectMake(self.fitness.right+kWidth(5), kWidth(10), kWidth(170), kWidth(18));
        self.subAtomName.font = [UIFont systemFontOfSize:kWidth(13)];
        self.subAtomName.textColor = [UIColor blackColor];
        self.subAtomName ;
    })];
    
    [self.contentView addSubview:({
        self.getMild = [UIButton buttonWithType:UIButtonTypeCustom];
        self.getMild.frame = CGRectMake(self.subAtomName.right+kWidth(5), kWidth(7), kWidth(24), kWidth(24));
        [self.getMild setTitle:@"╳" forState:0];
        self.getMild.titleLabel.font = [UIFont systemFontOfSize:13];
        [self.getMild setTitleColor:[UIColor blackColor] forState:0];
        [self.getMild addTarget:self action:@selector(underageMirroredEffectSceneParsecsAction:) forControlEvents:UIControlEventTouchUpInside];
        self.getMild;
    })];
    
    [self.contentView addSubview:({
        self.moodSee = [[UIView alloc] init];
        self.moodSee.frame = CGRectMake(kWidth(12), kWidth(36), kWidth(320) - kWidth(48) - kWidth(24), kWidth(1));
        self.moodSee.backgroundColor = RGBHEX(0xBCBCBC);
        self.moodSee;
    })];
}

- (void)setFactMayInfo:(NSDictionary *)factMayInfo{
    _factMayInfo = factMayInfo;
    self.subAtomName.text = [NSString stringWithFormat:@"JUA=".relishKhaki,[_factMayInfo valueForKey:@"YWNjb3VudA==".relishKhaki]];
}


- (void)underageMirroredEffectSceneParsecsAction:(UIButton *)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"5o+Q56S6".relishKhaki message:@"5piv5ZCm5Yig6Zmk6K+l5p2h6LSm5Y+35L+h5oGv".relishKhaki preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"5Y+W5raI".relishKhaki style:UIAlertActionStyleDefault handler:nil];
    UIAlertAction *delAction = [UIAlertAction actionWithTitle:@"5Yig6Zmk".relishKhaki style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        dispatch_async(dispatch_get_main_queue(), ^{
            NSString *tempAccount = [NSString stringWithFormat:@"JUA=".relishKhaki, [self.factMayInfo valueForKey:@"YWNjb3VudA==".relishKhaki]];
            [RepeatOrangeLooperObservingInterior icyModeForkAccount:tempAccount];
            self.wonQuotes(self.factMayInfo);
        });
    }];
    
    [alert addAction:cancelAction];
    [alert addAction:delAction];
    UIViewController *topVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    [topVC presentViewController:alert animated:YES completion:nil];
}

- (void)dogLastLessKinRotate:(NSNotification *)notice {
    [self setNeedsLayout];
    [self stylusPickPingView];
}
@end
