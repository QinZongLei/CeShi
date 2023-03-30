
#import "NSString+Scruffy.h"








#import "LateCollapsedCropSobSelectorMasterCell.h"
#import "RepeatOrangeLooperObservingInterior.h"

@interface LateCollapsedCropSobSelectorMasterCell()

@property (nonatomic, strong) UILabel *fixSurge;
@end

@implementation LateCollapsedCropSobSelectorMasterCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self changeMapHalftoneSoccerUpdateServerCell];
    }
    return self;
}

-(void)changeMapHalftoneSoccerUpdateServerCell{
    [self.contentView addSubview:({
        self.fixSurge = [[UILabel alloc] init];
        self.fixSurge.font = [UIFont systemFontOfSize:kWidth(15)];
        self.fixSurge.text = @"5qCH6aKY".relishKhaki;
        self.fixSurge.textColor = [UIColor redColor];
        self.fixSurge.frame = CGRectMake(kWidth(40), kWidth(5), SCREENWIDTH -kWidth(80), kWidth(30));
        self.fixSurge;
    })];
}

- (void)setTapBit:(NSDictionary *)tapBit{
    self.fixSurge.text = [NSString stringWithFormat:@"JUA=".relishKhaki,[tapBit objectForKey:@"dGl0bGU=".relishKhaki]];
    
    //处理消息标红问题
    NSString *fixQuitBus = [[RepeatOrangeLooperObservingInterior manager].userInfo objectForKey:@"dXNlcl9uYW1l".relishKhaki];
    NSString * idStr = [NSString stringWithFormat:@"JUAlQA==".relishKhaki,[tapBit objectForKey:@"aWQ=".relishKhaki],fixQuitBus];
    NSString *redHiddenStr = [[NSUserDefaults standardUserDefaults] objectForKey:idStr];
    if ([@"cmVkSXNoaWRkZW4=".relishKhaki isEqualToString:redHiddenStr]) {
        self.fixSurge.textColor = color_agreement_tip;
    }
}

@end
