//
//  ZYNavViewController.m
//  ZY__tab+nav
//
//  Created by zy on 2017/10/13.
//  Copyright © 2017年 zhangyang. All rights reserved.
//

#import "ZYNavViewController.h"

@interface ZYNavViewController ()<UINavigationControllerDelegate>

@end

@implementation ZYNavViewController
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
   
    
    if (self.childViewControllers.count) {// 非根控制器
//         隐藏底部的tabbar
         viewController.hidesBottomBarWhenPushed = YES;
        
        // 设置非控制器，左侧返回右侧返回根控制器按钮图片
        UIImage *image = [[UIImage imageNamed:@"icon_back"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        UIBarButtonItem *back = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(backPre)];
        viewController.navigationItem.leftBarButtonItem = back;
//        self.interactivePopGestureRecognizer.delegate = nil;
    }
    
    // 调用父类的方法才会实现推出下一个界面的效果
    [super pushViewController:viewController animated:YES];
    
}
// 返回上一个界面
- (void)backPre
{
    [self popViewControllerAnimated:YES];
}

//- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
//{
//    //判断控制器是否为根控制器
//    if (self.childViewControllers.count) {
//        //将保存的代理赋值回去,让系统保持原来的侧滑功能
//        self.interactivePopGestureRecognizer.delegate = self.popDelegate;
//    }else
//    {
//        self.popDelegate = nil;
//    }
//}



- (void)viewDidLoad {
    [super viewDidLoad];
    __weak typeof(self) weakSelf = self;
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.interactivePopGestureRecognizer.delegate = weakSelf;
    }
    //初始化正常样式
    [self NormalStyle];
  
    //将系统的代理保存(在view加载完毕就赋值--->viewDidLoad)
//    self.popDelegate = self.interactivePopGestureRecognizer.delegate;
    // Do any additional setup after loading the view.
}
-(void)NormalStyle
{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    // 根视图控制器已经出现时，将滑动手势失效
    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.navigationController.interactivePopGestureRecognizer.enabled = NO;
    }
}

#pragma mark 视图已经消失时
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    // 根视图控制器已经消失时，让滑动手势生效
    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    }
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
