//
//  XBMyClassCell.m
//  XBClient
//
//  Created by yongche_w on 2017/10/23.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBMyClassCell.h"

@interface XBMyClassCell()

@property (nonatomic, strong) UILabel* myTitleLabel;

@property (nonatomic, strong) UIView* line;

@end

@implementation XBMyClassCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        
        self.backgroundColor = [UIColor whiteColor];
        
        
        self.myTitleLabel = [[UILabel alloc] init];
        self.myTitleLabel.textColor = UIColorFromRGB(0x333333);
        self.myTitleLabel.font = [UIFont systemFontOfSize:15.0f];
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
    
   
    
    self.myTitleLabel.yd_left = 16;
    self.myTitleLabel.yd_width = self.yd_width - 32;
    self.myTitleLabel.yd_centerY = self.yd_height / 2;
    
    self.line.frame = CGRectMake(0, 0, self.yd_width, 0.5);
    
}

- (void)reloadDataWithTitle:(NSString*)title
{
    self.myTitleLabel.text = title;
    
}

@end
