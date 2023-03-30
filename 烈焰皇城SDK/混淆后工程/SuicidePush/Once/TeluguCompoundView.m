
#import "NSString+Scruffy.h"








#import "TeluguCompoundView.h"
#import "RecoveredWarpPreservesSlavicIntegral.h"

@implementation TeluguCompoundView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(snapshotBookmarkFarTradEdgeContextsSix:) name:UIKeyboardWillShowNotification object:nil];

        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(entropyLoadingAlienTodayCutScanOnline:) name:UIKeyboardDidHideNotification object:nil];
        //所有界面设置暗黑模式
        if (@available(iOS 13.0, *)) {
                self.overrideUserInterfaceStyle = UIUserInterfaceStyleLight;
            } else {
                  
            }
        
        [self mapConnectedView];
    }
    return self;
}


-(void)mapConnectedView{
    [self addSubview:({
        self.view = [[UIView alloc] init];
        self.view.layer.masksToBounds = YES;
        self.view.frame = CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT);
        self.view.backgroundColor = [UIColor clearColor];
        self.view;
    })] ;
    
    [self.view addSubview:({
        self.butArmour = [[UIImageView alloc] init];
        self.butArmour.userInteractionEnabled = YES;
        self.butArmour.frame = CGRectMake(0, 0, kWidth(450), kWidth(320));
        self.butArmour.image = kSetBundleImage(dialogBg);
        self.butArmour.center = self.view.center;
        self.butArmour;
    })];
    

    [self.butArmour addSubview:({
        self.fixSurge = [[UILabel alloc] init];
        self.fixSurge.frame = CGRectMake((self.butArmour.width-kWidth(120))/2, kWidth(45), kWidth(120), kWidth(15));
        self.fixSurge.textAlignment = NSTextAlignmentCenter;
        self.fixSurge.textColor = color_title_tip;
        [self.fixSurge setFont:[UIFont fontWithName:@"SGVsdmV0aWNhLUJvbGQ=".relishKhaki size:20]];
        self.fixSurge;
    })];
    
    [self.butArmour addSubview:({
        self.moodSee = [[UIImageView alloc] init];
        self.moodSee.image = kSetBundleImage(lineImg);
        self.moodSee.frame = CGRectMake((self.butArmour.width - (self.butArmour.width-kWidth(100)))/2, self.fixSurge.bottom+kWidth(5), self.butArmour.width-kWidth(100), kWidth(2));
        self.moodSee;
    })];
    
}

- (void)setWhoDivide:(NSString *)whoDivide
{
    
    _whoDivide = whoDivide;
   
    self.butArmour.image = kSetBundleImage(whoDivide);
  
}


-(void)setEnhanced:(NSString *)enhanced{
    _enhanced = enhanced;
    self.fixSurge.text = _enhanced;
}


- (void)snapshotBookmarkFarTradEdgeContextsSix:(NSNotification *)notification {
    //取出键盘弹出需要花费的时间
    double duration = [notification.userInfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    [UIView animateWithDuration:duration animations:^{
        if (self.center.y == kScreen_Height / 2) {
            self.center = CGPointMake(self.center.x, self.center.y - kWidth(80));
        }
    }];
}

- (void)entropyLoadingAlienTodayCutScanOnline:(NSNotification *)notification {
    //取出键盘弹出需要花费的时间
    double duration = [notification.userInfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    [UIView animateWithDuration:duration animations:^{
        self.center = CGPointMake(kScreen_Width / 2, kScreen_Height / 2);
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    [self endEditing:YES];
}

@end
