//
//  XBRegisterViewController.m
//  XBClient
//
//  Created by yongche_w on 2017/10/9.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBRegisterViewController.h"
#import "XBSetPasswordViewController.h"
#import "XBLoginAndRegisterHandler.h"

@interface XBRegisterViewController ()

@property (nonatomic, strong) UIView* contentView;


@property (nonatomic, strong) UITextField* phoneTextField;

//短信验证码
@property (nonatomic, strong) UITextField* msgCodeTextField;

@property (nonatomic, strong) UIButton* msgCodeButton;

@property (nonatomic, strong) UIButton* nextButton;

@end

@implementation XBRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self showBackButtonWithImage];
    if(self.callerType == CallerByRegister){
        self.title = @"注册";
        
    }else if(self.callerType == CallerByFrogetPassword){
       self.title = @"修改密码";
        
    }
    
    [[XBLoginAndRegisterHandler instance] endCountdownTimer];
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
        
        self.msgCodeTextField = [[UITextField alloc] init];
        self.msgCodeTextField.placeholder = @"请输入短信验证码";
        self.msgCodeTextField.font = [UIFont systemFontOfSize:15];
        self.msgCodeTextField.backgroundColor = [UIColor clearColor];
        
        UIView* leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 46, 22)];
        self.msgCodeTextField.leftView = leftView;
        self.msgCodeTextField.leftViewMode = UITextFieldViewModeAlways;
        
        UIView* rightView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 140, 35)];
        
        self.msgCodeTextField.rightView = rightView;
        self.msgCodeTextField.rightViewMode = UITextFieldViewModeAlways;
        
        self.msgCodeButton = [[UIButton alloc] initWithFrame:CGRectMake(10, 0, 120, 35)];
        [self.msgCodeButton setTitleForNormal:@"获取短信验证码"];
        [self.msgCodeButton setBackGroundColorForNormal:UIColorFromRGB(0x1abb75)];
        [self.msgCodeButton setTitleColorForNormal:UIColorFromRGB(0xffffff)];
        self.msgCodeButton.font = [UIFont systemFontOfSize:15];
        self.msgCodeButton.layer.cornerRadius = 5;
        self.msgCodeButton.layer.masksToBounds = YES;
        
        [self.msgCodeButton addTarget:self
                               action:@selector(msgCodeButtonPress)
                     forControlEvents:UIControlEventTouchUpInside];
        [rightView addSubview:self.msgCodeButton];
        
        [self.contentView addSubview:self.msgCodeTextField];
    }
    
    self.nextButton = [UIButton createButtonWithTarget:self selector:@selector(nextButtonPress)];
    [self.nextButton setTitleForNormal:@"下一步"];
    [self.nextButton setBackGroundColorForNormal:UIColorFromRGB(0x1abb75)];
    [self.nextButton setTitleColorForNormal:UIColorFromRGB(0xffffff)];
    self.nextButton.font = [UIFont systemFontOfSize:17];
    
    self.nextButton.layer.cornerRadius = 5;
    self.nextButton.layer.masksToBounds = YES;
    
    [self.view addSubview:self.nextButton];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    [[XBLoginAndRegisterHandler instance] setCountdownTimerCallback:^(NSInteger countDown) {
        if (countDown > 0) {
            self.msgCodeButton.enabled = NO;
            [self.msgCodeButton setTitleForNormal:[NSString stringWithFormat:@"重获验证码(%lds)",(long)countDown]];
            
        } else {
            self.msgCodeButton.enabled = YES;
            [self.msgCodeButton setTitleForNormal:@"获取验证码"];

        }
    }];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];

    [[XBLoginAndRegisterHandler instance] setCountdownTimerCallback:NULL];
}



- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.contentView.frame = CGRectMake(0, 32, self.view.yd_width, 96);
    self.phoneTextField.frame = CGRectMake(4, 0, self.contentView.yd_width - 8, 48);
    

    self.msgCodeTextField.frame = CGRectMake(4, self.phoneTextField.yd_bottom, self.contentView.yd_width - 8, 48);
    
    self.nextButton.frame = CGRectMake(16, self.contentView.yd_bottom + 32, self.view.yd_width - 32, 44);
    
}





- (void)nextButtonPress
{
    XBSetPasswordViewController* passwordVC = [[XBSetPasswordViewController alloc] init];
    [self.navigationController pushViewController:passwordVC animated:YES];
    
}

- (void)msgCodeButtonPress
{
    [[XBLoginAndRegisterHandler instance] startCountdownTimer];
}

@end
