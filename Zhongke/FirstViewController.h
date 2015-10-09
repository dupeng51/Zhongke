//
//  FirstViewController.h
//  Zhongke
//
//  Created by dampier on 15/9/28.
//  Copyright (c) 2015年 dampier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property IBOutlet UITableView * tableView;

@end

