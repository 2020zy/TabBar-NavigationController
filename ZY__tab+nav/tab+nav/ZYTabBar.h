//
//  ZYTbabBar.h
//  ZY__tab+nav
//
//  Created by zy on 2017/10/13.
//  Copyright © 2017年 zhangyang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYTabBarButton : UIButton

@end

@interface ZYTabBar : UITabBarController
-(instancetype)init;
/**
 *  设置tabBar显示指定控制器
 *
 *  @param index 位置
 */
-(void)showControllerIndex:(NSInteger)index;

/**
 *  数字角标
 *
 *  @param nu   所要显示数字
 *  @param index 位置
 */
-(void)showBadgeMark:(NSInteger)badge index:(NSInteger)index;

/**
 *  小红点
 *
 *  @param index 位置
 */
-(void)showPointMarkIndex:(NSInteger)index;

/**
 *  影藏指定位置角标
 *
 *  @param index 位置
 */
-(void)hideMarkIndex:(NSInteger)index;

@end
