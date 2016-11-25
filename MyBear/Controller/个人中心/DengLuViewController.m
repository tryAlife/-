//
//  DengLuViewController.m
//  MyBear
//
//  Created by 紫平方 on 16/11/23.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "DengLuViewController.h"

@interface DengLuViewController ()

@end

@implementation DengLuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title=@"登录";
    Lback
    _yanzhengmaTf.hidden=YES;
    _zhuceXian.hidden=YES;
    _yanzhengmaBtn.hidden=YES;
    _tongyiBtn.hidden=YES;
    _tongyiLab.hidden=YES;
    _tongyiview.hidden=YES;
    _xieyiBtn.hidden=YES;
}
- (IBAction)denglu:(id)sender {
    _yanzhengmaTf.hidden=YES;
    _zhuceXian.hidden=YES;
    _yanzhengmaBtn.hidden=YES;
    _tongyiBtn.hidden=YES;
    _tongyiLab.hidden=YES;
    _tongyiview.hidden=YES;
    _xieyiBtn.hidden=YES;
    _wangjimimaTf.hidden=NO;

    [_dengluBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _dengluBtn.backgroundColor=[UIColor colorWithRed:0.26 green:0.72 blue:0.97 alpha:1];
    
    [_zhuceBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _zhuceBtn.backgroundColor=[UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1];
    
}
- (IBAction)zhuce:(id)sender {
    
    _yanzhengmaTf.hidden=NO;
    _zhuceXian.hidden=NO;
    _yanzhengmaBtn.hidden=NO;
    _tongyiBtn.hidden=NO;
    _tongyiLab.hidden=NO;
    _tongyiview.hidden=NO;
    _xieyiBtn.hidden=NO;
    _wangjimimaTf.hidden=YES;
    
    [_dengluBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _dengluBtn.backgroundColor=[UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1];
    
    [_zhuceBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _zhuceBtn.backgroundColor=[UIColor colorWithRed:0.26 green:0.72 blue:0.97 alpha:1];
    


}
- (IBAction)tongyi:(id)sender {
    UIButton *btn=sender;
    btn.selected=!btn.selected;
    if (btn.selected==YES) {
        _tongyiview.backgroundColor=[UIColor colorWithRed:0.36 green:0.76 blue:0.96 alpha:1];
        [_tongyiview setBorderColor:[UIColor whiteColor] width:0.5];

    }else{
        _tongyiview.backgroundColor=[UIColor whiteColor];
        [_tongyiview setBorderColor:[UIColor grayColor] width:0.5];

    }
    
}

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
