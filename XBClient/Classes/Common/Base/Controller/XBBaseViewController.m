//
//  XBBaseViewController.m
//  XBClient
//
//  Created by yongche_w on 2017/10/9.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBBaseViewController.h"

@interface XBBaseViewController ()

@end

@implementation XBBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColorFromRGB(0xf5f5f5);
    self.edgesForExtendedLayout = UIRectEdgeNone;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)showBackButtonWithImage
{
    [self showBackButtonWithImage:@"nav_back"];
    
}

- (void)showBackButtonWithImage:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    [button setImageEdgeInsets:UIEdgeInsetsMake(0, -40, 0, 0)];
    [button setImage:image forState:UIControlStateNormal];
    UIBarButtonItem *barItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    [button addTarget:self
               action:@selector(backBarButtonPressed)
     forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = barItem;
}

- (void)showBackButtonWithTitle:(NSString *)title
{
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont systemFontOfSize:15]];
    
    CGFloat width = [title widthWithFont:[UIFont systemFontOfSize:15]
                     constrainedToHeigth:44 lineBreakMode:button.titleLabel.lineBreakMode textAlignment:button.titleLabel.textAlignment];
    button.frame = CGRectMake(0, 0, width, 44);
    
    UIBarButtonItem *barItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    [button addTarget:self
               action:@selector(backBarButtonPressed)
     forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = barItem;
}

- (void)backBarButtonPressed
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)setCustomLabelForNavTitle:(NSString*)title
{
    UILabel* label = [[UILabel alloc] init];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:19];
    label.textColor = UIColorFromRGB(0xffffff);
    label.text = title;
    [label sizeToFit];
    label.frame = CGRectIntegral(label.frame);
    self.navigationItem.titleView = label;
}

@end
