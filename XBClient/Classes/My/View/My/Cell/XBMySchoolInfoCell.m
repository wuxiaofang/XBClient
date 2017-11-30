//
//  XBMySchoolInfoCell.m
//  XBClient
//
//  Created by yongche_w on 2017/10/23.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBMySchoolInfoCell.h"

@interface XBMySchoolInfoCell()

@property (nonatomic, strong) UIImageView* schoolLogoImageView;

@property (nonatomic, strong) UILabel* schoolNameLabel;

@property (nonatomic, strong) UILabel* addressLabel;

@property (nonatomic, strong) UIView* line;

@end

@implementation XBMySchoolInfoCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        
        self.backgroundColor = [UIColor whiteColor];
        
        
        self.schoolLogoImageView = [[UIImageView alloc] init];
        self.schoolLogoImageView.yd_width = 48;
        self.schoolLogoImageView.yd_height = 48;
        self.schoolLogoImageView.backgroundColor = UIColorFromRGB(0x888888);
        self.schoolLogoImageView.layer.borderWidth = 0.5;
        self.schoolLogoImageView.layer.borderColor = UIColorFromRGB(0xe5e5e5).CGColor;
        self.schoolLogoImageView.layer.cornerRadius
        = self.schoolLogoImageView.yd_width / 2;
        [self addSubview:self.schoolLogoImageView];
        
        
        
        self.schoolNameLabel = [[UILabel alloc] init];
        self.schoolNameLabel.textColor = UIColorFromRGB(0x333333);
        self.schoolNameLabel.font = [UIFont systemFontOfSize:17.0f];
        self.schoolNameLabel.textAlignment = NSTextAlignmentLeft;
        [self addSubview:self.schoolNameLabel];
        self.schoolNameLabel.text = @"  ";
        [self.schoolNameLabel sizeToFit];
        self.schoolNameLabel.frame = CGRectIntegral(self.schoolNameLabel.frame);
        
        self.addressLabel = [[UILabel alloc] init];
        self.addressLabel.textColor = UIColorFromRGB(0x888888);
        self.addressLabel.font = [UIFont systemFontOfSize:14.0f];
        self.addressLabel.textAlignment = NSTextAlignmentLeft;
        [self addSubview:self.addressLabel];
        
        self.addressLabel.text = @"  ";
        [self.addressLabel sizeToFit];
        self.addressLabel.frame = CGRectIntegral(self.addressLabel.frame);
        
        self.line = [[UIView alloc] init];
        self.line.backgroundColor = UIColorFromRGB(0xe5e5e5);
        [self addSubview:self.line];
        
    }
    return self;
    
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.schoolLogoImageView.yd_left = 16;
    self.schoolLogoImageView.yd_centerY = self.yd_height / 2;
    
    NSInteger startY = (self.yd_height - self.schoolNameLabel.yd_height - 4 - self.addressLabel.yd_height) / 2;
    
    self.schoolNameLabel.yd_left = self.schoolLogoImageView.yd_right + 12;
    self.schoolNameLabel.yd_width = self.yd_width - self.schoolNameLabel.yd_left - 80;
    self.schoolNameLabel.yd_top = startY;
    
    self.addressLabel.yd_left = self.schoolNameLabel.yd_left;
    self.addressLabel.yd_width = self.schoolNameLabel.yd_width;
    self.addressLabel.yd_top = self.schoolNameLabel.yd_bottom + 4;
    
    self.line.frame = CGRectMake(0, 0, self.yd_width, 0.5);
    
}

- (void)reloadData
{
    self.schoolNameLabel.text = @"剑桥国际英语酒仙桥校区";
    self.addressLabel.text = @"北京市朝阳区酒仙桥中路甲20号";
    
}

@end
