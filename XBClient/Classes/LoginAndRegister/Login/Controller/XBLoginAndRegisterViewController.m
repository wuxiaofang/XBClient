//
//  XBLoginAndRegisterViewController.m
//  XBClient
//
//  Created by yongche_w on 2017/10/9.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBLoginAndRegisterViewController.h"
#import "XBRegisterViewController.h"
#import "XBLoginViewController.h"

@interface XBLoginAndRegisterViewController ()

//@property (nonatomic, strong) UIScrollView* scrollerView;

@property (nonatomic, strong) UIImageView* bgImageView;

@property (nonatomic, strong) UIButton* registerButton;

@property (nonatomic, strong) UIButton* loginButton;

@end

@implementation XBLoginAndRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.bgImageView = [[UIImageView alloc] init];
    self.bgImageView.image = [UIImage imageNamed:@"loginAndRegister_bg"];
    [self.view addSubview:self.bgImageView];
    
    self.registerButton = [UIButton createButtonWithTarget:self selector:@selector(registerButtonPress)];
    [self.registerButton setTitleForNormal:@"开通账号，创建班级"];
    [self.registerButton setBackGroundColorForNormal:UIColorFromRGB(0x1abb75)];
    [self.registerButton setTitleColorForNormal:UIColorFromRGB(0xffffff)];
    self.registerButton.font = [UIFont systemFontOfSize:17];
    
    self.registerButton.layer.cornerRadius = 5;
    self.registerButton.layer.masksToBounds = YES;
    
    [self.view addSubview:self.registerButton];
    
    
    
    self.loginButton = [UIButton createButtonWithTarget:self selector:@selector(loginButtonPress)];
    
    
    [self.loginButton setTitleForNormal:@"已有账号登录"];
    [self.loginButton setBackGroundColorForNormal:UIColorFromRGB(0x1abb75)];
    [self.loginButton setTitleColorForNormal:UIColorFromRGB(0xffffff)];
    self.loginButton.font = [UIFont systemFontOfSize:17];
    
    self.loginButton.layer.cornerRadius = 5;
    self.loginButton.layer.masksToBounds = YES;
    
    [self.view addSubview:self.loginButton];
    
    self.view.backgroundColor = [UIColor blueColor];
    
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.bgImageView.frame = self.view.bounds;
    self.registerButton.frame = CGRectMake(16, self.view.yd_height - 204, self.view.yd_width - 32, 44);
    self.loginButton.frame = CGRectMake(16, self.registerButton.yd_bottom + 16, self.view.yd_width - 32, 44);

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}





- (void)registerButtonPress
{
    XBRegisterViewController* registerVC = [[XBRegisterViewController alloc] init];
    registerVC.callerType = CallerByRegister;
    [self.navigationController pushViewController:registerVC animated:YES];
}

- (void)loginButtonPress
{
    XBLoginViewController* loginVC = [[XBLoginViewController alloc] init];
    [self.navigationController pushViewController:loginVC animated:YES];
}

@end
