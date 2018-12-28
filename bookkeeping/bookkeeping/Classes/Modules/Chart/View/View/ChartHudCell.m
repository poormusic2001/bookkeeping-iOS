/**
 * 收入/支出切换
 * @author 郑业强 2018-12-28 创建文件
 */

#import "ChartHudCell.h"

#pragma mark - 声明
@interface ChartHudCell()

@property (weak, nonatomic) IBOutlet UIImageView *icon;
@property (weak, nonatomic) IBOutlet UILabel *nameLab;
@property (weak, nonatomic) IBOutlet UIImageView *done;

@end


#pragma mark - 实现
@implementation ChartHudCell


- (void)initUI {
    [self setSelectedBackgroundView:[[UIView alloc] initWithFrame:self.frame]];
    [self.selectedBackgroundView setBackgroundColor:kColor_BG];
    [self.nameLab setFont:[UIFont systemFontOfSize:AdjustFont(12) weight:UIFontWeightLight]];
    [self.done setHidden:true];
}


#pragma mark - set
- (void)setIndexPath:(NSIndexPath *)indexPath {
    _indexPath = indexPath;
    if (indexPath.row == 0) {
        [self.icon setImage:[UIImage imageNamed:@"tally_select_expenditure"]];
        [self.nameLab setText:@"支出"];
    } else {
        [self.icon setImage:[UIImage imageNamed:@"tally_select_income"]];
        [self.nameLab setText:@"收入"];
    }
}
- (void)setChoose:(BOOL)choose {
    _choose = choose;
    _done.hidden = !choose;
}



@end
