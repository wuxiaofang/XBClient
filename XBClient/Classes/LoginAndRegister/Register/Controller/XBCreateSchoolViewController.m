//
//  XBCreateSchoolViewController.m
//  XBClient
//
//  Created by yongche_w on 2017/10/18.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBCreateSchoolViewController.h"

@interface XBCreateSchoolViewController ()

@property (nonatomic, strong) UIButton* schoolLogoButton;

@property (nonatomic, strong) UILabel* descLabel;

@property (nonatomic, strong) UITextField* schoolNameTextField;

@property (nonatomic, strong) UIButton* submitButton;

@end

@implementation XBCreateSchoolViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self showBackButtonWithImage];
    self.title = @"添加学校信息";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
