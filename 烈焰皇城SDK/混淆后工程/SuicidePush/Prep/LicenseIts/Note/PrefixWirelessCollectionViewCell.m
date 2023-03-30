
#import "NSString+Scruffy.h"








#import "PrefixWirelessCollectionViewCell.h"

@interface PrefixWirelessCollectionViewCell()
@property (nonatomic, strong) UIImageView *chapterNet;
@property (nonatomic, strong) UILabel *readPenName;
@end

@implementation PrefixWirelessCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self  uniformProtocolsUnableLocalFilmProgress];
        [self undoneTelephotoTruncatedRootReliableSexView];
    }
    return self;
}

- (void)uniformProtocolsUnableLocalFilmProgress {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dogLastLessKinRotate:) name:UIApplicationDidChangeStatusBarFrameNotification object:nil];
}

-(void)undoneTelephotoTruncatedRootReliableSexView{
    [self.contentView addSubview:({
        self.chapterNet = [[UIImageView alloc] init];
        self.chapterNet.frame =CGRectMake(self.width/2-kWidth(20), kWidth(2), kWidth(40), kWidth(40));
        
        self.chapterNet;
    })];
    [self.contentView addSubview:({
        self.readPenName = [[UILabel alloc] init];
        self.readPenName.frame = CGRectMake(0, self.chapterNet.bottom+kWidth(5), self.width, kWidth(20));
        self.readPenName.textAlignment = NSTextAlignmentCenter;
        self.readPenName.textColor = color_agreement_tip;
        self.readPenName.font = [UIFont systemFontOfSize:kWidth(16)];
        self.readPenName;
    })];
}

- (void)setAddLike:(NSDictionary *)addLike{
    _addLike = addLike;
    self.readPenName.text = [NSString stringWithFormat:@"JUA=".relishKhaki,[_addLike valueForKey:@"bmFtZQ==".relishKhaki]];
    NSString *imgPath = [NSString stringWithFormat:@"JUA=".relishKhaki,[_addLike valueForKey:@"aW1n".relishKhaki]];
    [self.chapterNet setImage:kSetBundleImage(imgPath)];
}


- (void)dogLastLessKinRotate:(NSNotification *)notice {
    [self setNeedsLayout];
    [self undoneTelephotoTruncatedRootReliableSexView];
}

@end
