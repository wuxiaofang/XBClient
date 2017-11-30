//
//  XBMyProfileCell.m
//  XBClient
//
//  Created by yongche_w on 2017/10/23.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBMyProfileCell.h"

@interface XBMyProfileCell()

@property (nonatomic, strong) UIImageView* vatarImageView;

@property (nonatomic, strong) UILabel* nameLabel;

@property (nonatomic, strong) UILabel* myTitleLabel;

@property (nonatomic, strong) UIView* line;

@end

@implementation XBMyProfileCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        
        self.backgroundColor = [UIColor whiteColor];
        
        
        self.vatarImageView = [[UIImageView alloc] init];
        self.vatarImageView.yd_width = 48;
        self.vatarImageView.yd_height = 48;
        self.vatarImageView.backgroundColor = UIColorFromRGB(0x888888);
        self.vatarImageView.layer.borderWidth = 0.5;
        self.vatarImageView.layer.borderColor = UIColorFromRGB(0xe5e5e5).CGColor;
        self.vatarImageView.layer.cornerRadius
        = self.vatarImageView.yd_width / 2;
        [self addSubview:self.vatarImageView];
        
        
        
        self.nameLabel = [[UILabel alloc] init];
        self.nameLabel.textColor = UIColorFromRGB(0x333333);
        self.nameLabel.font = [UIFont systemFontOfSize:17.0f];
        self.nameLabel.textAlignment = NSTextAlignmentLeft;
        [self addSubview:self.nameLabel];
        self.nameLabel.text = @"  ";
        [self.nameLabel sizeToFit];
        self.nameLabel.frame = CGRectIntegral(self.nameLabel.frame);
        
        self.myTitleLabel = [[UILabel alloc] init];
        self.myTitleLabel.textColor = UIColorFromRGB(0x888888);
        self.myTitleLabel.font = [UIFont systemFontOfSize:14.0f];
        self.myTitleLabel.textAlignment = NSTextAlignmentLeft;
        [self addSubview:self.myTitleLabel];
        
        self.myTitleLabel.text = @"  ";
        [self.myTitleLabel sizeToFit];
        self.myTitleLabel.frame = CGRectIntegral(self.myTitleLabel.frame);
        
        self.line = [[UIView alloc] init];
        self.line.backgroundColor = UIColorFromRGB(0xe5e5e5);
        [self addSubview:self.line];
        
    }
    return self;
    
}


- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.vatarImageView.yd_left = 16;
    self.vatarImageView.yd_centerY = self.yd_height / 2;
    
    NSInteger startY = (self.yd_height - self.nameLabel.yd_height - 4 - self.myTitleLabel.yd_height) / 2;
    
    self.nameLabel.yd_left = self.vatarImageView.yd_right + 12;
    self.nameLabel.yd_width = self.yd_width - self.nameLabel.yd_left - 80;
    self.nameLabel.yd_top = startY;
    
    self.myTitleLabel.yd_left = self.nameLabel.yd_left;
    self.myTitleLabel.yd_width = self.nameLabel.yd_width;
    self.myTitleLabel.yd_top = self.nameLabel.yd_bottom + 4;
    
    self.line.frame = CGRectMake(0, 0, self.yd_width, 0.5);
    
}

- (void)reloadData
{
    self.nameLabel.text = @"武晓方";
    self.myTitleLabel.text = @"职务：英语老师";
    
}

@end
