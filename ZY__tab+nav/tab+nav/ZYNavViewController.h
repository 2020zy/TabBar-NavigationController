//
//  ZYNavViewController.h
//  ZY__tab+nav
//
//  Created by zy on 2017/10/13.
//  Copyright © 2017年 zhangyang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYNavViewController : UINavigationController
//设置一个属性保存系统的代理
@property (nonatomic, strong) id popDelegate;
//初始化正常样式
-(void)NormalStyle;
@end
