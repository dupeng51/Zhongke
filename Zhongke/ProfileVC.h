//
//  ProfileVC.h
//  Zhongke
//
//  Created by dampier on 15/9/28.
//  Copyright (c) 2015年 dampier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileVC : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property IBOutlet UITableView *tableview;


-(IBAction)shareAction:(id)sender;

@end
