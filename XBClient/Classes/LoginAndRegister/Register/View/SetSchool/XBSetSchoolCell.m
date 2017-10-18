//
//  XBSetSchoolCell.m
//  XBClient
//
//  Created by yongche_w on 2017/10/17.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBSetSchoolCell.h"

@interface XBSetSchoolCell()

@property (nonatomic, strong) UIImageView* iconImageView;

@property (nonatomic, strong) UILabel* mainTextLabel;

@property (nonatomic, strong) UILabel* descTextLabel;

@property (nonatomic, strong) UIImageView* arrorImageView;

@property (nonatomic, strong) UIView* seperateLine;

@end

@implementation XBSetSchoolCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        
        self.backgroundColor = [UIColor whiteColor];
        
        self.iconImageView = [[UIImageView alloc] init];
        self.iconImageView.image = [UIImage imageNamed:@"setschool_icon"];
        [self.iconImageView sizeToFit];
        self.iconImageView.frame = CGRectIntegral(self.iconImageView.frame);
        [self addSubview:self.iconImageView];
        
        self.mainTextLabel = [[UILabel alloc] init];
        self.mainTextLabel.textColor = UIColorFromRGB(0x333333);
        self.mainTextLabel.font = [UIFont systemFontOfSize:17.0f];
        self.mainTextLabel.textAlignment = NSTextAlignmentLeft;
        [self addSubview:self.mainTextLabel];
        
        self.descTextLabel = [[UILabel alloc] init];
        self.descTextLabel.textColor = UIColorFromRGB(0x888888);
        self.descTextLabel.font = [UIFont systemFontOfSize:14.0f];
        self.descTextLabel.textAlignment = NSTextAlignmentLeft;
        [self addSubview:self.descTextLabel];
        
        
        
        self.seperateLine = [[UIView alloc] init];
        self.seperateLine.backgroundColor = UIColorFromRGB(0xe5e5e5);
        [self addSubview:self.seperateLine];
        
    }
    return self;
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.iconImageView.yd_left = 16;
    self.iconImageView.yd_top = 18;
    
    self.mainTextLabel.yd_left = self.iconImageView.yd_right + 11;
    self.mainTextLabel.yd_width = self.yd_width - 160;
    self.mainTextLabel.yd_height = 20;
    self.mainTextLabel.yd_centerY = self.iconImageView.yd_centerY;

    self.descTextLabel.yd_left = self.mainTextLabel.yd_left;
    self.descTextLabel.yd_top = self.mainTextLabel.yd_bottom + 3;
    self.descTextLabel.yd_width = self.mainTextLabel.yd_width;
    self.descTextLabel.yd_height = 16;


    self.seperateLine.frame = CGRectMake(0, 0, self.yd_width, 0.5);
}

- (void)reloadData
{
    self.mainTextLabel.text = @"加入【趣学国际教育】";
    self.descTextLabel.text = @"武晓方邀请您加入";
}

@end
