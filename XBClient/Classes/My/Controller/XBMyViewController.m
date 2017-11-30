//
//  XBMyViewController.m
//  XBClient
//
//  Created by yongche_w on 2017/10/12.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBMyViewController.h"
#import "XBMyProfileCell.h"
#import "XBMySchoolInfoCell.h"
#import "XBMyClassCell.h"
#import "XBSettingViewController.h"

@interface XBMyViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView* tableview;

@end

@implementation XBMyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setCustomLabelForNavTitle:@"我的"];
    [self showRightButtonWithTitle:@"设置"];
    
    self.tableview = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableview.dataSource = self;
    self.tableview.delegate = self;
    self.tableview.backgroundColor = [UIColor clearColor];
    self.tableview.backgroundView = nil;
    self.tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tableview registerClass:[XBMyProfileCell class] forCellReuseIdentifier:@"XBMyProfileCell"];
    [self.tableview registerClass:[XBMySchoolInfoCell class] forCellReuseIdentifier:@"XBMySchoolInfoCell"];
    [self.tableview registerClass:[XBMyClassCell class] forCellReuseIdentifier:@"XBMyClassCell"];
    [self.view addSubview:self.tableview];
    
    self.tableview.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.tableview.yd_width, 20)];;
    
}

- (void)rightButtonPress
{
    
    XBSettingViewController* settingVC = [[XBSettingViewController alloc] init];
    settingVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:settingVC animated:YES];
}


#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 1;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* identify = @"UITableViewCell";
    if(indexPath.section == 0){
        
        identify = @"XBMyProfileCell";
        
    }else if(indexPath.section == 1){
        
        
        identify = @"XBMySchoolInfoCell";
    }else {
        
        
        identify = @"XBMyClassCell";
    }
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identify];
    
    if([identify isEqualToString:@"XBMyProfileCell"]){
        XBMyProfileCell* myprofileCell = (XBMyProfileCell*)cell;
        [myprofileCell reloadData];
        
    }else if([identify isEqualToString:@"XBMySchoolInfoCell"]){
        XBMySchoolInfoCell* schoolInfoCell = (XBMySchoolInfoCell*)cell;
        [schoolInfoCell reloadData];
        
    }else if([identify isEqualToString:@"XBMyClassCell"]){
        XBMyClassCell* myClassCell = (XBMyClassCell*)cell;
        if(indexPath.section == 2){
            
            [myClassCell reloadDataWithTitle:@"班级列表"];
        }else if(indexPath.section == 3){
            [myClassCell reloadDataWithTitle:@"学校首页"];
            
        }else if(indexPath.section == 4){
            [myClassCell reloadDataWithTitle:@"扫描登录PC端"];
            
        }
        
        
    }
    
    return cell;
}


#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 20;
    
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.tableview.yd_width, 20)];
    
    UIView* line = [[UIView alloc] initWithFrame:CGRectMake(0, 0, view.yd_width, 0.5)];
    line.backgroundColor = UIColorFromRGB(0xe5e5e5);
    [view addSubview:line];
    
    return view;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat heigth = 0;
    if(indexPath.section == 0){
        heigth = 80;
        
    }else if(indexPath.section == 1){
        
        heigth = 80;
    }else{
        
        heigth = 48;
    }
    
    return heigth;
    
    
}


@end
