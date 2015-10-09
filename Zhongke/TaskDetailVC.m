//
//  TaskDetailVC.m
//  Zhongke
//
//  Created by dampier on 15/10/8.
//  Copyright (c) 2015年 dampier. All rights reserved.
//

#import "TaskDetailVC.h"

@interface TaskDetailVC ()

@end

#define CELL_CONTENT_MARGIN 8.0f
#define FONT_SIZE 17.0f

@implementation TaskDetailVC
{
    int CELL_CONTENT_WIDTH;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    CELL_CONTENT_WIDTH = self.view.frame.size.width;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    switch (section) {
        case 0:
        {
            //任务概要
            return 1;
            break;
        }
        case 1:{
            return 2;
            break;
        }
        case 2:{
            return 3;
            break;
        }
        default:
            break;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.section) {
        case 0:
        {
            return [self configSummaryCell:tableView cell:indexPath];
            break;
        }
        case 1:
        {
            switch (indexPath.row) {
                case 0:
                {
                    return [self configOperationCell:tableView cell:indexPath];
                    break;
                }
                case 1:{
                    return [self configVideoCell:tableView cell:indexPath];
                    break;
                }
                default:
                    break;
            }
            break;
        }
        case 2:
        {
            switch (indexPath.row) {
                case 0:
                {
                    return [self configCheckCell:tableView cell:indexPath];
                    break;
                }
                case 1:{
                    return [self configAgreementCell:tableView cell:indexPath];
                    break;
                }
                case 2:{
                    return [self configRecordCell:tableView cell:indexPath];
                    break;
                }
                default:
                    break;
            }
            break;
        }
        default:
            break;
    }
    
    // Configure the cell...
    
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *) indexPath {
    switch (indexPath.section) {
        case 0:
        {
            return <#expression#>
            break;
        }
        case 1:
        {
            switch (indexPath.row) {
                case 0:
                {
                    return [self configOperationCell:tableView cell:indexPath];
                    break;
                }
                case 1:{
                    return [self configVideoCell:tableView cell:indexPath];
                    break;
                }
                default:
                    break;
            }
            break;
        }
        case 2:
        {
            switch (indexPath.row) {
                case 0:
                {
                    return [self configCheckCell:tableView cell:indexPath];
                    break;
                }
                case 1:{
                    return [self configAgreementCell:tableView cell:indexPath];
                    break;
                }
                case 2:{
                    return [self configRecordCell:tableView cell:indexPath];
                    break;
                }
                default:
                    break;
            }
            break;
        }
        default:
            break;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Inner Method

-(UITableViewCell *) configSummaryCell:(UITableView *)tableView cell:(NSIndexPath *) indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"summaryCell" forIndexPath:indexPath];
    UILabel *content = (UILabel *)[cell viewWithTag:1];
    [content setText:@"1111\n111222222"];
    [content setNumberOfLines:10];
    
    UILabel *content1 = (UILabel *)[cell viewWithTag:2];
    [content1 setText:@"任务剩余天数：3天    任务酬劳：￥100"];
    return cell;
}

-(UITableViewCell *) configOperationCell:(UITableView *)tableView cell:(NSIndexPath *) indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"operationStandardCell" forIndexPath:indexPath];
    UILabel *content = (UILabel *)[cell viewWithTag:1];
    [content setText:@"1111\n111222222"];
    [content setNumberOfLines:0];
    return cell;
}

-(UITableViewCell *) configVideoCell:(UITableView *)tableView cell:(NSIndexPath *) indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"videoCell" forIndexPath:indexPath];
    
    return cell;
}

-(UITableViewCell *) configCheckCell:(UITableView *)tableView cell:(NSIndexPath *) indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"checkStandardCell" forIndexPath:indexPath];
    
    UILabel *content = (UILabel *)[cell viewWithTag:1];
    [content setText:@"1111\n111222222"];
    [content setNumberOfLines:0];
    
    return cell;
}

-(UITableViewCell *) configAgreementCell:(UITableView *)tableView cell:(NSIndexPath *) indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"agreementCell" forIndexPath:indexPath];
    
    return cell;
}

-(UITableViewCell *) configRecordCell:(UITableView *)tableView cell:(NSIndexPath *) indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"recordCell" forIndexPath:indexPath];
    
    return cell;
}

-(CGFloat) getHightWithText:(NSString *) text
{
    CGSize constraint = CGSizeMake(CELL_CONTENT_WIDTH - (CELL_CONTENT_MARGIN * 2), 20000.0f);
    
    CGSize size = [text sizeWithFont:[UIFont systemFontOfSize:FONT_SIZE] constrainedToSize:constraint lineBreakMode:NSLineBreakByWordWrapping];
    
    CGFloat height = size.height + (CELL_CONTENT_MARGIN * 2);
    
    text = nil;
    return MAX(height, 33.0f);
}

@end
