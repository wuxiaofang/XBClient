//
//  XBCheckInViewController.m
//  XBClient
//
//  Created by yongche_w on 2017/10/12.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBCheckInViewController.h"
#import "XBLoginAndRegisterHandler.h"
#import "XBCheckInCourseCell.h"
#import "XBCheckInTimetableCell.h"

@interface XBCheckInViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView* tableview;

@end

@implementation XBCheckInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setCustomLabelForNavTitle:@"趣学国际教育"];
    
//    [XBLoginAndRegisterHandler presentLoginAndRegisterVCWithRootVC:self.navigationController loginFinishedBlock:^{
//
//    }];
    
    self.tableview = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableview.dataSource = self;
    self.tableview.delegate = self;
    self.tableview.backgroundColor = [UIColor clearColor];
    self.tableview.backgroundView = nil;
    self.tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tableview registerClass:[XBCheckInCourseCell class] forCellReuseIdentifier:@"XBCheckInCourseCell"];
    [self.tableview registerClass:[XBCheckInTimetableCell class] forCellReuseIdentifier:@"XBCheckInTimetableCell"];
    [self.view addSubview:self.tableview];
}


#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSInteger section = 2;
   
    return section;
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger rows = 1;
    
    if(section == 0){
        
        rows = 1;
        
    }else if(section == 1){
        
        rows = 4;
    }
    return rows;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* identify = @"UITableViewCell";
    if(indexPath.section == 0){
        
        identify = @"XBCheckInTimetableCell";
        
    }else if(indexPath.section == 1){
        
        
        identify = @"XBCheckInCourseCell";
    }
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identify];
    
    if([identify isEqualToString:@"XBCheckInCourseCell"]){
        XBCheckInCourseCell* courseCell = (XBCheckInCourseCell*)cell;
        [courseCell reloadData];
        
    }else if([identify isEqualToString:@"XBCheckInTimetableCell"]){
        XBCheckInTimetableCell* timetableCell = (XBCheckInTimetableCell*)cell;
        [timetableCell reloadData];
        
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
        heigth = 60;
        
    }else if(indexPath.section == 1){
        
        heigth = 80;
    }
    
    return heigth;
    
    
}
@end
