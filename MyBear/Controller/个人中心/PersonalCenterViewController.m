//
//  PersonalCenterViewController.m
//  MyBear
//
//  Created by Bears on 16/11/21.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "PersonalCenterViewController.h"
#import "DengLuViewController.h"
#import "GeRenTableViewCell.h"

@interface PersonalCenterViewController ()

@end

@implementation PersonalCenterViewController
@synthesize myTableView;
@synthesize information;
@synthesize dataSource;

- (void)weidenglu{
    [dataSource removeAllObjects];
    [dataSource addObject:@"登录查看投诉信息"];
    [dataSource addObject:@"我的收藏"];
    [dataSource addObject:@"系统介绍"];
    

}

- (void)putongyonghu{
    [dataSource removeAllObjects];
    [dataSource addObject:@"投诉查询"];
    [dataSource addObject:@"我的投诉"];
    [dataSource addObject:@"在线投诉"];
    [dataSource addObject:@"我的信息"];
//    [dataSource addObject:@""];
}

- (void)richangguanlihechang{
    [dataSource removeAllObjects];
    [dataSource addObject:@"我的河道"];
    [dataSource addObject:@"河长日志"];
    [dataSource addObject:@"河道巡查"];
    [dataSource addObject:@"投诉管理"];
    [dataSource addObject:@"我的信息"];

}

- (void)hechangbanguanli{
    [dataSource removeAllObjects];
    [dataSource addObject:@"河道管理"];
    [dataSource addObject:@"河长管理"];
    [dataSource addObject:@"巡河管理"];
    [dataSource addObject:@"督办抄告管理"];
    [dataSource addObject:@"河道水质录入"];
    [dataSource addObject:@"投诉管理"];
    [dataSource addObject:@"新闻管理"];

}

- (void)xinehchang{
    [dataSource addObject:@"河道管理"];
    [dataSource addObject:@"河长管理"];
    [dataSource addObject:@"巡河管理"];
    [dataSource addObject:@"督办抄告管理"];
    [dataSource addObject:@"河道水质录入"];
    [dataSource addObject:@"投诉管理"];
    [dataSource addObject:@"新闻管理"];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    dataSource=[[NSMutableArray alloc]init];
    [self weidenglu];
    myTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, ApplicationWidth, ApplicationHeight-44)];
    myTableView.delegate = self;
    myTableView.dataSource = self;
    myTableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    //myTableView.estimatedRowHeight = 1000;
    
    //myTableView.rowHeight = UITableViewAutomaticDimension;
    
    [myTableView setTableFooterView:[[UIView alloc]init]];
    
    [self.view addSubview:myTableView];

    [myTableView registerNib:[UINib nibWithNibName:@"GeRenTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell2"];
    
    [self setTableHeader];
    
}

- (void)setTableHeader{
    UIView *headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, ApplicationWidth, lsize(265))];
    [myTableView setTableHeaderView:headerView];
    
    UIImageView *bimg = [[UIImageView alloc]init];
    [bimg setImage:Limage(@"")];
    [headerView addSubview:bimg];
    [bimg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset=0;
        make.right.offset=0;
        make.bottom.offset=0;
        make.left.offset=0;
    }];


    
    UIImageView *img = [[UIImageView alloc]init];
    [headerView addSubview:img];
    img.image=Limage(@"");
    img.backgroundColor=[[UIColor whiteColor]colorWithAlphaComponent:0.5];
    [img setCornerRadius:lsize(100)/2];
    [img mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset=lsize(50);
        make.centerX.mas_equalTo(headerView.mas_centerX);
        make.height.offset=lsize(100);
    
    }];

    UILabel *lab = [[UILabel alloc]init];
//    lab.font = <##>;
    lab.textColor = [UIColor whiteColor];
    lab.text= @"未登录" ;
    [headerView addSubview:lab];
    [lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(img.mas_bottom).offset=lsize(23);
        make.centerX.mas_equalTo(headerView.mas_centerX);
    }];

    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"请先登录或者注册" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [headerView addSubview:btn];
    [lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(lab.mas_bottom).offset=lsize(23);
        make.centerX.mas_equalTo(headerView.mas_centerX);
    }];


}

- (void)btnClick{
    DengLuViewController *viewController = [[DengLuViewController alloc]init];
    [self.navigationController pushViewController:viewController animated:YES];
    

}

#pragma mark ========================================
#pragma mark ==UITableView
#pragma mark ========================================
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    [dataSource addObject:@"登录查看投诉信息"];
//    [dataSource addObject:@"我的收藏"];
//    [dataSource addObject:@"系统介绍"];

    NSString *key=dataSource[indexPath.row];
    if ([key isEqualToString:@"登录查看投诉信息"]) {
        static NSString *cellIdentifier01=@"cell1";
        UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier01];
        if (!cell) {
            cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier01];
            UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, ApplicationWidth, lsize(85))];
//            lab.font = <##>;
//            lab.textColor = <##>;
            lab.textAlignment=NSTextAlignmentCenter;
            lab.text= key ;
            [cell.contentView addSubview:lab];

        }
        cell.accessoryType=UITableViewCellAccessoryNone;
        cell.selectedBackgroundView = [[UIView alloc] initWithFrame:cell.frame];
        cell.selectedBackgroundView.backgroundColor = myBackgroundColor;
        return cell;

    }
    
    static NSString *cellIdentifier01=@"cell2";
    GeRenTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier01];
    if (!cell) {
        cell=[[GeRenTableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier01];
    }
    cell.lab.text=key;
    cell.img.image=Limage(@"");
//    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    cell.selectedBackgroundView = [[UIView alloc] initWithFrame:cell.frame];
    cell.selectedBackgroundView.backgroundColor = myBackgroundColor;
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *key=dataSource[indexPath.row];
    if ([key isEqualToString:@"登录查看投诉信息"]) {
        return lsize(85);
    }
    return 60;
}

//- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return YES;
//}
//
//- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
//    return UITableViewCellEditingStyleDelete;
//}
//
//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if (editingStyle == UITableViewCellEditingStyleDelete) {
//
//    }
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
