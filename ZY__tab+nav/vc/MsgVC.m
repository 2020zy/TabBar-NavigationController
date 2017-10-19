//
//  MsgVC.m
//  XHTabBar-Demo
//
//  Created by xiaohui on 16/2/26.
//  Copyright © 2016年 qiantou. All rights reserved.
//

#import "MsgVC.h"
#import "ZYTabBar.h"

#import "InfoVC.h"

@interface MsgVC ()

@end

@implementation MsgVC

- (void)viewDidLoad {
    [super viewDidLoad];
//self.navigationController.jp_closePopForCurrentViewController = YES;

    self.navigationItem.leftBarButtonItem = nil;
   
    //自定义一些控件，比如搜索框等
    UIView * vi = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREENW , 40)];
    vi.backgroundColor = [UIColor blueColor];
    self.navigationItem.titleView = vi;
    
    
    
    self.navigationItem.title = @"消息";
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
  
    UIButton *pushBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    pushBtn.backgroundColor = [UIColor orangeColor];
    [pushBtn setTitle:@"Push" forState:UIControlStateNormal];
    pushBtn.frame = CGRectMake(self.view.frame.size.width/2.0-40.0, self.view.frame.size.height/2.0-20.0, 80.0, 40.0);
    [pushBtn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushBtn];
    // Do any additional setup after loading the view.
}

-(void)push
{
    InfoVC *VC = [[InfoVC alloc] init];
    VC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:VC animated:YES];
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
