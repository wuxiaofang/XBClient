//
//  XBCheckInCourseCell.m
//  XBClient
//
//  Created by yongche_w on 2017/10/18.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBCheckInCourseCell.h"

@interface XBCheckInCourseCell()

@property (nonatomic, strong) UIImageView* clockIcon;

@property (nonatomic, strong) UIImageView* bookmarkIcon;

@property (nonatomic, strong) UILabel* timeLabel;

@property (nonatomic, strong) UILabel* nameLabel;

@property (nonatomic, strong) UIView* line;

@end

@implementation XBCheckInCourseCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        
        self.backgroundColor = [UIColor whiteColor];
        
        self.clockIcon = [[UIImageView alloc] init];
        self.clockIcon.image = [UIImage imageNamed:@"clock_icon"];
        [self.clockIcon sizeToFit];
        self.clockIcon.frame = CGRectIntegral(self.clockIcon.frame);
        [self addSubview:self.clockIcon];
        
        self.bookmarkIcon = [[UIImageView alloc] init];
        self.bookmarkIcon.image = [UIImage imageNamed:@"bookmark_icon"];
        [self.bookmarkIcon sizeToFit];
        self.bookmarkIcon.frame = CGRectIntegral(self.bookmarkIcon.frame);
        [self addSubview:self.bookmarkIcon];
        
        self.timeLabel = [[UILabel alloc] init];
        self.timeLabel.textColor = UIColorFromRGB(0x333333);
        self.timeLabel.font = [UIFont systemFontOfSize:15.0f];
        self.timeLabel.textAlignment = NSTextAlignmentLeft;
        [self addSubview:self.timeLabel];
        
        self.nameLabel = [[UILabel alloc] init];
        self.nameLabel.textColor = UIColorFromRGB(0x333333);
        self.nameLabel.font = [UIFont systemFontOfSize:15.0f];
        self.nameLabel.textAlignment = NSTextAlignmentLeft;
        [self addSubview:self.nameLabel];
        
        
        
        self.line = [[UIView alloc] init];
        self.line.backgroundColor = UIColorFromRGB(0xe5e5e5);
        [self addSubview:self.line];
        
    }
    return self;
    
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.clockIcon.yd_left = 20;
    self.clockIcon.yd_top = 17;
    
    self.bookmarkIcon.yd_left = 20;
    self.bookmarkIcon.yd_top = self.clockIcon.yd_bottom + 5;
    
    self.timeLabel.yd_left = self.clockIcon.yd_right + 8;
    self.timeLabel.yd_width = self.yd_width - 140;
    self.timeLabel.yd_height = 17;
    self.timeLabel.yd_centerY = self.clockIcon.yd_centerY;
    
    self.nameLabel.yd_left = self.bookmarkIcon.yd_right + 8;
    self.nameLabel.yd_width = self.yd_width - 140;
    self.nameLabel.yd_height = 17;
    self.nameLabel.yd_centerY = self.bookmarkIcon.yd_centerY;
    
    self.line.frame = CGRectMake(0, 0, self.yd_width, 0.5);
    
}

- (void)reloadData
{
    self.timeLabel.text = @"14:25 - 16:30";
    self.nameLabel.text = @"[剑桥英语] 一阶一班";
    
}

@end
