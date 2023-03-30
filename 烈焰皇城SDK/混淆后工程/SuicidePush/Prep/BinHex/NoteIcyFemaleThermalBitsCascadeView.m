






#import "NoteIcyFemaleThermalBitsCascadeView.h"
#import "RecoveredWarpPreservesSlavicIntegral.h"

@interface NoteIcyFemaleThermalBitsCascadeView ()<UITextFieldDelegate>

@end

@implementation NoteIcyFemaleThermalBitsCascadeView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self uppercaseAdvancesContinuedWriteBitmapAngularView];
    }
    return self;
}

-(void)uppercaseAdvancesContinuedWriteBitmapAngularView{
    
    [self addSubview:({
        self.extendCat = [[UILabel alloc] init];
        self.extendCat.textColor = color_lbTfLeftTextHex;
        self.extendCat.font = [UIFont systemFontOfSize:kWidth(tfLeftLabelInpublicFont)];
        self.extendCat.frame = CGRectMake(0, 0, kWidth(60), kWidth(35));
        self.extendCat;
    })];
    
    [self addSubview:({
        self.butArmour = [[UIImageView alloc]  init];
        self.butArmour .userInteractionEnabled = YES;
        self.butArmour.image = kSetBundleImage(inputBg);
        self.butArmour.frame = CGRectMake(self.extendCat.right+kWidth(5), 0, self.width - kWidth(65), kWidth(35));
        self.butArmour;
    })];
    
    [self.butArmour addSubview:({
        self.mayPaper = [[UITextField alloc]  init];
        self.mayPaper.textColor = color_edit_body;
        self.mayPaper.frame = CGRectMake(kWidth(5), 0, self.butArmour.width-kWidth(15), self.butArmour.height);
        self.mayPaper.font = [UIFont systemFontOfSize:kWidth(17)];
        self.mayPaper.delegate = self;
        self.mayPaper;
    })];
    

}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    if (textField == self.mayPaper) {
   
      if (range.length == 1 && string.length == 0) {
        return YES;
      }else if (self.mayPaper.text.length >= 14) {
        self.mayPaper.text = [textField.text substringToIndex:14];
        return NO;
      }
    }
  return YES;
}


- (void)textFieldDidEndEditing:(UITextField *)textField {
    textField.text = [textField.text lowercaseString];
}

- (void)setHangRecentWrap:(NSString *)hangRecentWrap
{
    _hangRecentWrap = hangRecentWrap;
    
    self.extendCat.text = hangRecentWrap;
}

- (void)setOverPath:(UIImage *)overPath{
    _overPath = overPath;
    if ([RecoveredWarpPreservesSlavicIntegral intervalOneHoursApplierCursiveVowel:_overPath]) {
        [self.butArmour addSubview:({
            self.mostDueIcon = [[UIImageView alloc] init];
            self.mostDueIcon.image =overPath;
            self.mostDueIcon.frame = CGRectMake(kWidth(5), kWidth(7), kWidth(20), kWidth(20));
            self.mostDueIcon.centerY = self.butArmour.centerY;
            self.mostDueIcon;
        })];
        
        if (_inventory != nil) {
            //如果设置了按钮需要调整位置
            self.mayPaper.frame = CGRectMake(self.mostDueIcon.right+ kWidth(5), 0, self.butArmour.width-self.mostDueIcon.width-self.inventory.width-kWidth(25), self.butArmour.height);
            [self layoutIfNeeded];
        }else{
            //没有设置按钮不需要调整位置
            self.mayPaper.frame = CGRectMake(self.mostDueIcon.right+ kWidth(5), 0, self.butArmour.width-self.mostDueIcon.width-kWidth(15), self.butArmour.height);
            [self layoutIfNeeded];
        }
    }
}

- (void)setInventory:(UIButton *)inventory{
    _inventory = inventory;
    if (_inventory != nil) {
        //首先判断是否开启左边icon
        if ([RecoveredWarpPreservesSlavicIntegral intervalOneHoursApplierCursiveVowel:_overPath]) {
            [self.butArmour addSubview:_inventory];
            self.mayPaper.frame = CGRectMake(self.mostDueIcon.right+ kWidth(5), 0, self.butArmour.width-self.mostDueIcon.width-self.inventory.width-kWidth(25), self.butArmour.height);
            [self layoutIfNeeded];
        }else{
            self.mayPaper.frame = CGRectMake(kWidth(5), 0, self.butArmour.width-kWidth(15), self.butArmour.height);
            [self layoutIfNeeded];
        }
    }
    //如果没有按钮则无需修改
}

- (void)setRedSpellItsNap:(NSString *)redSpellItsNap{
    if (!kStringIsNull(redSpellItsNap)) {
        NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:redSpellItsNap attributes:
                                                     @{NSForegroundColorAttributeName:color_edit_prompt,
        NSFontAttributeName:[UIFont systemFontOfSize:kWidth(15)]}];
            self.mayPaper.attributedPlaceholder = attrString;
    }
}

@end
