






#import "UnlimitedFavoritesPrepUnlikelyBeenBlendView.h"
#import "PutSafetyWetLastBehaviorElementComparedCell.h"
#import "RepeatOrangeLooperObservingInterior.h"

@interface UnlimitedFavoritesPrepUnlikelyBeenBlendView()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic) CGRect liftFrame;
@property (nonatomic, strong) UITableView *fatAccount;
@property (nonatomic, strong) NSArray *farsiEnsure;
@end

@implementation UnlimitedFavoritesPrepUnlikelyBeenBlendView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.liftFrame = frame;
        [self uniformProtocolsUnableLocalFilmProgress];
        [self patternSongThousandsBuffersCostView];
        [self balanceDimensionCopticAmharicSub];
       
    }
    return self;
}

- (void)uniformProtocolsUnableLocalFilmProgress {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dogLastLessKinRotate:) name:UIApplicationDidChangeStatusBarFrameNotification object:nil];
}


-(void)patternSongThousandsBuffersCostView{
    self.farsiEnsure = [NSArray arrayWithArray:[RepeatOrangeLooperObservingInterior versionsRowAccount]];
    
    [self addSubview:({
        self.fatAccount = [[UITableView alloc] init];
        self.fatAccount.backgroundColor = [UIColor clearColor];
        self.fatAccount.dataSource = self;
        self.fatAccount.delegate = self;
        self.fatAccount.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
        self.fatAccount.tableFooterView = [[UIView alloc] init];
        self.fatAccount.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self.fatAccount registerClass:[PutSafetyWetLastBehaviorElementComparedCell class] forCellReuseIdentifier:CelliIdentify];
        self.fatAccount;
    })];
}


- (void)balanceDimensionCopticAmharicSub{
    
    CGFloat rowLayout_height = 0;
    
    if (self.farsiEnsure.count >=3) {
        
        rowLayout_height = 3 * kWidth(38);
    } else {
        rowLayout_height = self.farsiEnsure.count * kWidth(38);
    }
    
    self.layer.cornerRadius = kWidth(5);
    self.fatAccount.frame = CGRectMake(0, 0, CGRectGetWidth(self.liftFrame), rowLayout_height);
    self.fatAccount.rowHeight = kWidth(38);
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return  1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.farsiEnsure.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PutSafetyWetLastBehaviorElementComparedCell *cell = [tableView dequeueReusableCellWithIdentifier:CelliIdentify];
    NSDictionary *factMayInfo = [NSDictionary dictionaryWithDictionary:self.farsiEnsure[indexPath.row]];
    cell.factMayInfo = factMayInfo;
    __weak typeof(self)weakSelf = self;
    cell.wonQuotes = ^(NSDictionary * _Nonnull params) {
        dispatch_async(dispatch_get_main_queue(), ^{
            weakSelf.farsiEnsure = [NSArray arrayWithArray:[RepeatOrangeLooperObservingInterior versionsRowAccount]];
            [weakSelf balanceDimensionCopticAmharicSub];
            [weakSelf.fatAccount reloadData];
            if (weakSelf.wonQuotes) {
                weakSelf.wonQuotes();
            }
        });
    };
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *dicSelect = [NSDictionary dictionaryWithDictionary:self.farsiEnsure[indexPath.row]];
    self.beganTradWho(dicSelect);
    [self removeFromSuperview];
}

- (void)dogLastLessKinRotate:(NSNotification *)notice {
    [self setNeedsLayout];
    [self balanceDimensionCopticAmharicSub];
}

@end
