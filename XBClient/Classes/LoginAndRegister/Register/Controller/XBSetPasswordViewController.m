//
//  XBSetPasswordViewController.m
//  XBClient
//
//  Created by yongche_w on 2017/10/17.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBSetPasswordViewController.h"

@interface XBSetPasswordViewController ()

@property (nonatomic, strong) UIView* contentView;

@property (nonatomic, strong) UITextField* passwordTextField;

@property (nonatomic, strong) UITextField* repeatPasswordTextField;

@property (nonatomic, strong) UIButton* submitButton;

@end

@implementation XBSetPasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self showBackButtonWithImage];
    self.title = @"设置密码";
    
    self.contentView = [[UIView alloc] init];
    self.contentView.backgroundColor = UIColorFromRGB(0xffffff);
    [self.view addSubview:self.contentView];
    
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
    
    {
        
        self.repeatPasswordTextField = [[UITextField alloc] init];
        self.repeatPasswordTextField.placeholder = @"请确认密码";
        self.repeatPasswordTextField.font = [UIFont systemFontOfSize:15];
        self.repeatPasswordTextField.backgroundColor = [UIColor clearColor];
        
        UIView* leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 46, 22)];
        self.repeatPasswordTextField.leftView = leftView;
        UIImageView* leftImageView = [[UIImageView alloc] init];
        leftImageView.image = [UIImage imageNamed:@"login_password"];
        leftImageView.frame = CGRectMake(12, 0, 22, 22);
        [leftView addSubview:leftImageView];
        self.repeatPasswordTextField.leftViewMode = UITextFieldViewModeAlways;
        
        [self.contentView addSubview:self.repeatPasswordTextField];
    }
    
    self.submitButton = [UIButton createButtonWithTarget:self selector:@selector(submitButtonPress)];
    [self.submitButton setTitleForNormal:@"提交"];
    [self.submitButton setBackGroundColorForNormal:UIColorFromRGB(0x1abb75)];
    [self.submitButton setTitleColorForNormal:UIColorFromRGB(0xffffff)];
    self.submitButton.font = [UIFont systemFontOfSize:17];
    
    self.submitButton.layer.cornerRadius = 5;
    self.submitButton.layer.masksToBounds = YES;
    
    [self.view addSubview:self.submitButton];
    
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.contentView.frame = CGRectMake(0, 32, self.view.yd_width, 96);
    
    self.passwordTextField.frame = CGRectMake(4, 0, self.contentView.yd_width - 8, 48);
    self.repeatPasswordTextField.frame = CGRectMake(4, self.passwordTextField.yd_bottom, self.contentView.yd_width - 8, 48);
    
    self.submitButton.frame = CGRectMake(16, self.contentView.yd_bottom + 32, self.view.yd_width - 32, 44);
    
}


- (void)submitButtonPress
{
    
    
}

@end
