//
//  XBSetSchoolViewController.m
//  XBClient
//
//  Created by yongche_w on 2017/10/17.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBSetSchoolViewController.h"
#import "XBSetSchoolCreateCell.h"
#import "XBSetSchoolCell.h"

#import "XBCreateSchoolViewController.h"

@interface XBSetSchoolViewController () <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView* tableview;

@property (nonatomic, strong) NSArray* schoolArray;

@end

@implementation XBSetSchoolViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self showBackButtonWithImage];
    
    [self setCustomLabelForNavTitle:@"加入或创建学校"];
    self.schoolArray = [NSArray arrayWithObjects:@"",@"",@"", nil];
    self.tableview = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableview.dataSource = self;
    self.tableview.delegate = self;
    self.tableview.rowHeight = 80;
    self.tableview.backgroundColor = [UIColor clearColor];
    self.tableview.backgroundView = nil;
    self.tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tableview registerClass:[XBSetSchoolCreateCell class] forCellReuseIdentifier:@"XBSetSchoolCreateCell"];
    [self.tableview registerClass:[XBSetSchoolCell class] forCellReuseIdentifier:@"XBSetSchoolCell"];
    [self.view addSubview:self.tableview];
 
    
    self.tableview.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.tableview.yd_width, 20)];;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSInteger section = 1;
    if(self.schoolArray.count > 0){
        section = 2;
        
    }
    return section;
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger rows = 1;
    
    if(self.schoolArray.count > 0){
        if(section == 0){
            
            rows = self.schoolArray.count;
        }
        
    }
    return rows;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* identify = @"XBSetSchoolCreateCell";
    if(indexPath.section == 0){
        
        if(self.schoolArray.count > 0){
            identify = @"XBSetSchoolCell";
            
        }
    }
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identify];
    
    if([identify isEqualToString:@"XBSetSchoolCell"]){
        XBSetSchoolCell* setSchoolCell = (XBSetSchoolCell*)cell;
        [setSchoolCell reloadData];
        
    }else if([identify isEqualToString:@"XBSetSchoolCreateCell"]){
        XBSetSchoolCreateCell* createSchoolCell = (XBSetSchoolCreateCell*)cell;
        [createSchoolCell reloadData];
        
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
    
    if(self.schoolArray.count > 0 && indexPath.section == 0){
        
        
    }else{
        
        XBCreateSchoolViewController* createVC = [[XBCreateSchoolViewController alloc] init];
        [self.navigationController pushViewController:createVC animated:YES];
    }
    
}


@end
