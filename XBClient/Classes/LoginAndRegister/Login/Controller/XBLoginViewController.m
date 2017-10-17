//
//  XBLoginViewController.m
//  XBClient
//
//  Created by yongche_w on 2017/9/18.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBLoginViewController.h"

@interface XBLoginViewController ()

@property (nonatomic, strong) UIView* contentView;


@property (nonatomic, strong) UITextField* phoneTextField;

@property (nonatomic, strong) UITextField* passwordTextField;

@property (nonatomic, strong) UIButton* loginButton;

@end

@implementation XBLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self showBackButtonWithImage];
    self.title = @"登录";
    
    self.contentView = [[UIView alloc] init];
    self.contentView.backgroundColor = UIColorFromRGB(0xffffff);
    [self.view addSubview:self.contentView];
    
    {
        
        self.phoneTextField = [[UITextField alloc] init];
        self.phoneTextField.placeholder = @"请输入手机号";
        self.phoneTextField.font = [UIFont systemFontOfSize:15];
        self.phoneTextField.backgroundColor = [UIColor clearColor];
        
        UIView* leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 46, 22)];
        self.phoneTextField.leftView = leftView;
        UIImageView* leftImageView = [[UIImageView alloc] init];
        leftImageView.image = [UIImage imageNamed:@"login_phone"];
        leftImageView.frame = CGRectMake(12, 0, 22, 22);
        [leftView addSubview:leftImageView];
        self.phoneTextField.leftViewMode = UITextFieldViewModeAlways;
        
        [self.contentView addSubview:self.phoneTextField];
    }
    
    {
        
        self.passwordTextField = [[UITextField alloc] init];
        self.passwordTextField.placeholder = @"请输入密码";
        self.passwordTextField.font = [UIFont systemFontOfSize:15];
        self.passwordTextField.backgroundColor = [UIColor clearColor];
        
        UIView* leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 46, 22)];
        self.passwordTextField.leftView = leftView;
        UIImageView* leftImageView = [[UIImageView alloc] init];
        leftImageView.image = [UIImage imageNamed:@"login_password"];
        leftImageView.frame = CGRectMake(12, 0, 22, 22);
        [leftView addSubview:leftImageView];
        self.passwordTextField.leftViewMode = UITextFieldViewModeAlways;
        
        [self.contentView addSubview:self.passwordTextField];
    }
    
    self.loginButton = [UIButton createButtonWithTarget:self selector:@selector(loginButtonpress)];
    [self.loginButton setTitleForNormal:@"登录"];
    [self.loginButton setBackGroundColorForNormal:UIColorFromRGB(0x1abb75)];
    [self.loginButton setTitleColorForNormal:UIColorFromRGB(0xffffff)];
    self.loginButton.font = [UIFont systemFontOfSize:17];
    
    self.loginButton.layer.cornerRadius = 5;
    self.loginButton.layer.masksToBounds = YES;
    
    [self.view addSubview:self.loginButton];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.contentView.frame = CGRectMake(0, 32, self.view.yd_width, 96);
    
    self.phoneTextField.frame = CGRectMake(4, 0, self.contentView.yd_width - 8, 48);
    
    self.passwordTextField.frame = CGRectMake(4, 48, self.contentView.yd_width - 8, 48);
    
    self.loginButton.frame = CGRectMake(16, self.contentView.yd_bottom + 32, self.view.yd_width - 32, 44);
}

- (void)loginButtonpress
{
    
    
}


@end
