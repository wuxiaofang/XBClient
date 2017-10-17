//
//  XBSetSchoolCreateCell.m
//  XBClient
//
//  Created by yongche_w on 2017/10/17.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBSetSchoolCreateCell.h"

@implementation XBSetSchoolCreateCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        
        self.backgroundColor = [UIColor whiteColor];
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

@end
