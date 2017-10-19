//
//  ZY_Navbar.m
//  ZY__tab+nav
//
//  Created by zy on 2017/10/18.
//  Copyright © 2017年 zhangyang. All rights reserved.
//

#import "ZY_Navbar.h"

@implementation ZY_Navbar
-(instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        
        _backbtn = [[UIButton alloc]init];
        _backbtn.backgroundColor = [UIColor redColor];
        [self addSubview:_backbtn];
        [_backbtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(10);
            make.centerY.mas_equalTo(self);
            make.size.mas_equalTo(CGSizeMake(50, 50));
        }];
        
        _titlelabel = [[UILabel alloc]init];
        [self addSubview:_titlelabel];
        [_titlelabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(self);
            make.centerX.mas_equalTo(self);
        }];
        
        
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
