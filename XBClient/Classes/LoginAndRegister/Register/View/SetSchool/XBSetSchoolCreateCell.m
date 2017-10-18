//
//  XBSetSchoolCreateCell.m
//  XBClient
//
//  Created by yongche_w on 2017/10/17.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBSetSchoolCreateCell.h"


@interface XBSetSchoolCreateCell()

@property (nonatomic, strong) UIImageView* iconImageView;

@property (nonatomic, strong) UILabel* mainTextLabel;


@property (nonatomic, strong) UIImageView* arrorImageView;

@property (nonatomic, strong) UIView* seperateLine;

@end

@implementation XBSetSchoolCreateCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        
        self.backgroundColor = [UIColor whiteColor];
        
        self.iconImageView = [[UIImageView alloc] init];
        self.iconImageView.image = [UIImage imageNamed:@"createschool_icon"];
        [self.iconImageView sizeToFit];
        self.iconImageView.frame = CGRectIntegral(self.iconImageView.frame);
        [self addSubview:self.iconImageView];
        
        self.mainTextLabel = [[UILabel alloc] init];
        self.mainTextLabel.textColor = UIColorFromRGB(0x333333);
        self.mainTextLabel.font = [UIFont systemFontOfSize:17.0f];
        self.mainTextLabel.textAlignment = NSTextAlignmentLeft;
        [self addSubview:self.mainTextLabel];
        
        self.seperateLine = [[UIView alloc] init];
        self.seperateLine.backgroundColor = UIColorFromRGB(0xe5e5e5);
        [self addSubview:self.seperateLine];
    }
    return self;
    
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.iconImageView.yd_left = 16;
    self.iconImageView.yd_centerY = self.yd_height / 2;
    
    self.mainTextLabel.yd_left = self.iconImageView.yd_right + 11;
    self.mainTextLabel.yd_width = self.yd_width - 160;
    self.mainTextLabel.yd_height = 20;
    self.mainTextLabel.yd_centerY = self.yd_height / 2;
    
    
    self.seperateLine.frame = CGRectMake(0, 0, self.yd_width, 0.5);
}

- (void)reloadData
{
    self.mainTextLabel.text = @"创建学校";
    
}

@end
