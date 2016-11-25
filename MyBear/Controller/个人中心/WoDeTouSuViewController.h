//
//  WoDeTouSuViewController.h
//  MyBear
//
//  Created by 紫平方 on 16/11/23.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "BaseViewController.h"

@interface WoDeTouSuViewController : BaseViewController <UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,retain)NSMutableArray *dataSource;
@property(nonatomic,retain)NSMutableDictionary *information;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end
