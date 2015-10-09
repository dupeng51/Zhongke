//
//  ProfileVC.m
//  Zhongke
//
//  Created by dampier on 15/9/28.
//  Copyright (c) 2015年 dampier. All rights reserved.
//

#import "ProfileVC.h"

@interface ProfileVC ()

@end

@implementation ProfileVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)shareAction:(id)sender
{
    
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
            return 1;
            break;
        }
        case 1:
        {
            return 2;
            break;
        }
        case 2:
        {
            return 2;
            break;
        }
        default: 
            break;
    }
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ProfileCell" forIndexPath:indexPath];
    UILabel *label = (UILabel *)[cell viewWithTag:1];
    
    switch (indexPath.section) {
        case 0:
        {
            [label setText:@"我的信息"];
            break;
        }
        case 1:
        {
            switch (indexPath.row) {
                case 0: {
                    [label setText:@"使用帮助"];
                    break;
                }
                case 1: {
                    [label setText:@"意见反馈"];
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
                case 0: {
                    [label setText:@"版本更新"];
                    break;
                }
                case 1: {
                    [label setText:@"关于数据堂"];
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
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
