
#import "NSString+Scruffy.h"








#import "ColumnZeroStoodNorwegianAdaptorTopCell.h"
#import "RepeatOrangeLooperObservingInterior.h"


@interface ColumnZeroStoodNorwegianAdaptorTopCell()
@property (nonatomic, strong) UIImageView *reactorImage;
@property (nonatomic, strong) UILabel *weekend;
@property (nonatomic, strong) UILabel *busGallon;
@property (nonatomic, strong) UIButton *chargeAppears;
@end

@implementation ColumnZeroStoodNorwegianAdaptorTopCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        [self  uniformProtocolsUnableLocalFilmProgress];
        [self fullBagRealCursorsShortQuarterCell];
    }
    return self;
}

-(void)uniformProtocolsUnableLocalFilmProgress{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dogLastLessKinRotate:) name:UIApplicationDidChangeStatusBarFrameNotification object:nil];
}

-(void)fullBagRealCursorsShortQuarterCell{
    self.backgroundColor = [UIColor clearColor];
    
    [self.contentView addSubview:({
        self.reactorImage = [[UIImageView alloc] init];
        self.reactorImage.frame = CGRectMake(kWidth(40), kWidth(10), kWidth(30), kWidth(30));
        self.reactorImage;
    })];
    
    [self.contentView addSubview:({
        self.weekend = [[UILabel alloc] init];
        self.weekend.textColor = color_agreement_tip;
        self.weekend.frame = CGRectMake(self.reactorImage.right+kWidth(5), self.reactorImage.top, kWidth(70), kWidth(30));
        self.weekend.font = [UIFont systemFontOfSize:kWidth(15)];
        self.weekend;
    })];
    
    [self.contentView addSubview:({
        self.busGallon = [[UILabel alloc] init];
        self.busGallon.textColor = color_findPwd;
        self.busGallon.font = [UIFont systemFontOfSize:kWidth(15)];
        self.busGallon.frame = CGRectMake(self.weekend.right+kWidth(2), self.reactorImage.top, kWidth(100), kWidth(30));
        self.busGallon;
    })];
    
    [self.contentView addSubview:({
        self.chargeAppears = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.chargeAppears setBackgroundImage:kSetBundleImage(operationImg) forState:UIControlStateNormal];
        [self.chargeAppears addTarget:self action:@selector(boxCutScanAction:) forControlEvents:UIControlEventTouchUpInside];
        self.chargeAppears.frame = CGRectMake(self.busGallon.right+kWidth(45), kWidth(5), kWidth(80), kWidth(40));
        self.chargeAppears;
    })];
}

- (void)setSquares:(NSDictionary *)squares{
    NSString *iconStr = [NSString stringWithFormat:@"JUA=".relishKhaki,[squares valueForKey:@"aWNvbg==".relishKhaki]];
    [self.reactorImage setImage:kSetBundleImage(iconStr)];
    
    NSString *nameStr = [NSString stringWithFormat:@"JUA=".relishKhaki,[squares valueForKey:@"bmFtZQ==".relishKhaki]];
    self.weekend.text = nameStr;
    
    NSString * promptStr = [NSString stringWithFormat:@"JUA=".relishKhaki,[squares valueForKey:@"cHJvbXB0".relishKhaki]];
    self.busGallon.text = promptStr;
    if ([@"KOW3suWunuWQjeiupOivgSk=".relishKhaki isEqualToString:promptStr] || [@"KOaJi+acuuW3sue7keWumik=".relishKhaki isEqualToString:promptStr]) {
        self.chargeAppears.hidden = YES;
        self.busGallon.textColor = [UIColor greenColor];
    }
}

- (void)boxCutScanAction:(UIButton *)sender {
    self.canonChinaMenBlock();
}


- (void)dogLastLessKinRotate:(NSNotification *)notice {
    [self setNeedsLayout];
    [self fullBagRealCursorsShortQuarterCell];
}

@end
