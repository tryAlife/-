//
//  PersonalCenterViewController.h
//  MyBear
//
//  Created by Bears on 16/11/21.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "BaseViewController.h"

@interface PersonalCenterViewController : BaseViewController <UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,retain)UITableView *myTableView;
@property(nonatomic,retain)NSMutableArray *dataSource;
@property(nonatomic,retain)NSMutableDictionary *information;

@end
