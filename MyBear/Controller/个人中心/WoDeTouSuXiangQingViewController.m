//
//  WoDeTouSuXiangQingViewController.m
//  MyBear
//
//  Created by 紫平方 on 16/11/23.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "WoDeTouSuXiangQingViewController.h"

@interface WoDeTouSuXiangQingViewController ()

@end

@implementation WoDeTouSuXiangQingViewController
@synthesize myTableView;
@synthesize information;
@synthesize dataSource;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    Lback
    self.title=@"我的投诉详情";
    
    dataSource=[[NSMutableArray alloc]init];
    [dataSource addObject:@[@"投诉人",@"投诉主题",@"投诉时间",@"投诉河道",@"投诉内容"]];
    [dataSource addObject:@[@"处理人",@"处理时间",@"处理结果"]];
    myTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, ApplicationWidth, ApplicationHeight-44)];
    myTableView.delegate = self;
    myTableView.dataSource = self;
    //myTableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    myTableView.estimatedRowHeight = 1000;
    
    myTableView.rowHeight = UITableViewAutomaticDimension;
    
    [myTableView setTableFooterView:[[UIView alloc]init]];
    
    [self.view addSubview:myTableView];

}

#pragma mark ========================================
#pragma mark ==UITableView
#pragma mark ========================================
- (NSInteger )numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [dataSource[section] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier01=@"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier01];
    if (!cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier01];
        UILabel *lab = [[UILabel alloc]init];
        lab.font = Lfont(18);
        //        lab.textColor = <##>;
        //        lab.text= <##> ;
        lab.tag=100;
        [cell.contentView addSubview:lab];
        [lab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset=10;
            make.left.offset=15;
        }];
        
        UILabel *lab1 = [[UILabel alloc]init];
        lab1.font = Lfont(18);
        lab1.numberOfLines=0;
        //        lab.textColor = <##>;
        //        lab.text= <##> ;
        lab1.tag=200;
        [cell.contentView addSubview:lab1];
        

        
    }
    UILabel *lab=[cell.contentView viewWithTag:100];
    UILabel *lab1=[cell.contentView viewWithTag:200];
    
    lab1.text=@"不干净不干净不干净不干净不干净不干净不干净不干净不干净不干净不干净不干净不干净不干净";
    CGSize size=[lab1.text sizeWithFont:Lfont(18) maxWidth:ApplicationWidth-80-15];
    [lab1 mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.offset=10;
        make.left.offset=80;
        make.right.offset=-10;
        make.bottom.offset=-10;
        make.height.offset=size.height;
    }];

    
    NSString *key=dataSource[indexPath.section][indexPath.row];
    lab.text=key;
    cell.selectedBackgroundView = [[UIView alloc] initWithFrame:cell.frame];
    cell.selectedBackgroundView.backgroundColor = myBackgroundColor;
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}




- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 44+44;

}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, ApplicationWidth, 44+44)];
    headerView.backgroundColor = [UIColor colorWithRed:0.89 green:0.89 blue:0.89 alpha:1];

    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, ApplicationWidth-30, 44)];
    lab.font = Lfont(18);
//    lab.textColor = <##>;
    
    lab.attributedText=[LColorText TranslateForeText:@"投诉编号：" withColor:[UIColor blackColor] withFont:Lfont(18) LastText:@"A2010228" withColor:[UIColor colorWithRed:0.99 green:0.51 blue:0.41 alpha:1] withFont:Lfont(18)] ;
    [headerView addSubview:lab];
    
    UIView *wView = [[UIView alloc]initWithFrame:CGRectMake(0, 44, ApplicationWidth, 44)];
    wView.backgroundColor = [UIColor whiteColor];
    [headerView addSubview:wView];
    
    UILabel *lab1 = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, ApplicationWidth-30, 44)];
    lab1.font = Lfont(18);
        lab1.textColor = [UIColor colorWithRed:0.99 green:0.51 blue:0.41 alpha:1];
    NSArray *arr=@[@"投诉情况",@"处理情况"];
    lab1.text=arr[section];
    [wView addSubview:lab1];


    
    return headerView;
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
