//
//  XBLoginAndRegisterViewController.m
//  XBClient
//
//  Created by yongche_w on 2017/10/9.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBLoginAndRegisterViewController.h"

@interface XBLoginAndRegisterViewController ()

@property (nonatomic, strong) UIScrollView* scrollerView;

@property (nonatomic, strong) UIButton* registerButton;

@property (nonatomic, strong) UIButton* loginButton;

@end

@implementation XBLoginAndRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.registerButton = [UIButton createButtonWithTarget:self selector:@selector(registerButtonPress)];
    [self.registerButton setTitle:@"还没有注册，去注册一下" forState:UIControlStateNormal];
    [self.view addSubview:self.registerButton];
    
    
    
    self.loginButton = [UIButton createButtonWithTarget:self selector:@selector(loginButtonPress)];
    [self.loginButton setTitle:@"登录" forState:UIControlStateNormal];
    [self.view addSubview:self.loginButton];
    
    self.view.backgroundColor = [UIColor blueColor];
    
}

- (void)viewWillLayoutSubviews
{
    self.registerButton.frame = CGRectMake(15, self.view.yd_height - 120, self.view.yd_width - 30, 45);
    self.loginButton.frame = CGRectMake(15, self.registerButton.yd_bottom - 15, self.view.yd_width - 30, 45);

}

- (void)registerButtonPress
{

}

- (void)loginButtonPress
{

}

@end
