//
//  LastMsgVC.m
//  ZY__tab+nav
//
//  Created by zy on 2017/10/18.
//  Copyright © 2017年 zhangyang. All rights reserved.
//

#import "LastMsgVC.h"

@interface LastMsgVC ()

@end

@implementation LastMsgVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"最后的消息";
    self.view.backgroundColor = [UIColor redColor];
//    [self.navigationController.navigationBar setHidden:YES];

    UIBarButtonItem * back =   [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(backbane)];
    UIBarButtonItem * back1 =   [[UIBarButtonItem alloc]initWithTitle:@"测试" style:UIBarButtonItemStylePlain target:self action:@selector(backbane)];
   self.navigationItem.leftBarButtonItems = @[back,back1];
   
    
    
    // Do any additional setup after loading the view.
}
-(void)backbane
{
    [self.navigationController jp_popToViewControllerClassString:@"MainVC" handle:^UIViewController * _Nullable(NSArray<UIViewController *> * _Nullable viewControllers, NSError * _Nullable error) {
        if (!error) {
            return viewControllers.firstObject;
        }
        else{
            NSLog(@"%@", error);
            return nil;
        }
    } animated:YES];
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
