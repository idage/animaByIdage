//
//  ViewController.m
//  animaByIdage
//
//  Created by chuangye on 15-3-11.
//  Copyright (c) 2015年 chuangye. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController
{
    DGAaimaView *animaView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    //引入文件  用下面的方法控制各个空间的速度
    
    animaView = [[DGAaimaView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:animaView];
    [animaView DGAaimaView:animaView BigCloudSpeed:1.2 smallCloudSpeed:0.7 earthSepped:0.01 huojianSepped:2.0 littleSpeed:1];
    animaView.animaType=UIClouldAnimaFromUp;
    
    UIImageView *headTittleImageView = [[UIImageView alloc]initWithFrame:CGRectMake(50, 30, 220, 60)];
    headTittleImageView.image = [UIImage imageNamed:@"wenan@3x"];
    [self.view addSubview:headTittleImageView];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(100, 440, 120, 70)];
    [button setBackgroundImage:[UIImage imageNamed:@"lijitiyan@3x"] forState:UIControlStateNormal];
    [self.view addSubview:button];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
