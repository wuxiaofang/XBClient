//
//  XBCheckInTimetableCell.m
//  XBClient
//
//  Created by yongche_w on 2017/10/19.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBCheckInTimetableCell.h"

@interface XBCheckInTimetableCell()

@property (nonatomic, strong) UILabel* label;

@property (nonatomic, strong) UIButton* timetableButton;

@property (nonatomic, strong) UIView* line;

@end

@implementation XBCheckInTimetableCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        
        self.backgroundColor = [UIColor whiteColor];
        
        self.label = [[UILabel alloc] init];
        self.label.textColor = UIColorFromRGB(0x333333);
        self.label.font = [UIFont systemFontOfSize:15.0f];
        self.label.textAlignment = NSTextAlignmentLeft;
        [self addSubview:self.label];
        
        
        self.timetableButton = [[UIButton alloc] init];
        [self.timetableButton setTitleForNormal:@"课表"];
        [self.timetableButton setTitleColorForNormal:UIColorFromRGB(0x00c173)];
        self.timetableButton.layer.cornerRadius = 5;
        self.timetableButton.layer.borderColor = UIColorFromRGB(0x00c173).CGColor;
        self.timetableButton.layer.borderWidth = 0.5;
        self.timetableButton.frame = CGRectMake(0, 0, 65, 27);
        self.timetableButton.font = [UIFont systemFontOfSize:15];
        [self addSubview:self.timetableButton];
        
        
        self.line = [[UIView alloc] init];
        self.line.backgroundColor = UIColorFromRGB(0xe5e5e5);
        [self addSubview:self.line];
        
    }
    return self;
    
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.label.yd_left = 16;
    self.label.yd_width = self.yd_width - 140;
    self.label.yd_height = 40;
    self.label.yd_centerY = self.yd_height / 2;
    
    self.timetableButton.yd_left = self.yd_width - 16 - self.timetableButton.yd_width;
    self.timetableButton.yd_centerY = self.yd_height / 2;
    
    self.line.frame = CGRectMake(0, 0, self.yd_width, 0.5);
    
}

- (void)reloadData
{
    self.label.text = @"2017年10月20日 周三 共3课";
}

@end
