
#import "NSString+Scruffy.h"








#import "PopoverInstallsDetailFilmSlashView.h"
#import "UIImageView+WebCache.h"
#import "RepeatOrangeLooperObservingInterior.h"

@interface PopoverInstallsDetailFilmSlashView()

@property (nonatomic, strong) UIView *view;

@property (nonatomic, strong) UIImageView *bodyIcy;

@end

@implementation PopoverInstallsDetailFilmSlashView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self  uniformProtocolsUnableLocalFilmProgress];
        [self  defineTrustComputerErrorWithinView];
    }
    return self;
}

-(void)uniformProtocolsUnableLocalFilmProgress{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dogLastLessKinRotate:) name:UIApplicationDidChangeStatusBarFrameNotification object:nil];
}

-(void)defineTrustComputerErrorWithinView{
    [self addSubview:({
        self.view = [[UIView alloc] init];
        self.view.layer.masksToBounds = YES;

        self.view.backgroundColor = [UIColor clearColor];
        self.view.frame = CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT);
        self.view;
    })];
    
    [self.view addSubview:({
        self.bodyIcy = [[UIImageView alloc] init];
        self.bodyIcy.userInteractionEnabled = YES;
        self.bodyIcy.frame = CGRectMake(0, 0, kWidth(320), kWidth(340));
        self.bodyIcy.center = self.view.center;
        NSString * commentImgVStr = [NSString stringWithFormat:@"JUA=".relishKhaki,[[RepeatOrangeLooperObservingInterior manager].outputInfo objectForKey:@"Y29kZV9pbWc=".relishKhaki] ];
        if (!kStringIsNull(commentImgVStr)) {
            [self.bodyIcy sd_setImageWithURL:[NSURL URLWithString:commentImgVStr]];
        }
        self.bodyIcy;
    })];
    
    UITapGestureRecognizer *imageTapAction = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(foodQuotePickAction:)];
    [self.bodyIcy addGestureRecognizer:imageTapAction];
}


- (void)foodQuotePickAction:(UITapGestureRecognizer*)sender {
    [[NSUserDefaults standardUserDefaults] setObject:@"SGlkZW5HaWZ0Q29kZUZsb2F0".relishKhaki forKey:kFlagHidenGiftCodeFloat];
    [[NSUserDefaults standardUserDefaults] synchronize];
    NSString * italian = [NSString stringWithFormat:@"JUA=".relishKhaki,[[RepeatOrangeLooperObservingInterior manager].outputInfo objectForKey:@"Y29kZQ==".relishKhaki]];
    UIPasteboard *appPasteBoard =  [UIPasteboard generalPasteboard];
    [appPasteBoard setString:italian];
    dispatch_async(dispatch_get_main_queue(), ^{
        [DryTapSafeToast warnToast:@"5aSN5Yi25oiQ5Yqf".relishKhaki location:@"Y2VudGVy".relishKhaki formTime:2.5f];
    });
   
    [self removeFromSuperview];
    
}


- (void)dogLastLessKinRotate:(NSNotification *)notice {
    [self setNeedsLayout];
    [self defineTrustComputerErrorWithinView];
}
@end
