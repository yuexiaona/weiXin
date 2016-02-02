//
//  WXTableBarViewController.m
//  Wechat
//
//  Created by admin on 16/2/1.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "WXTableBarViewController.h"
#import "BaseNavigationController.h"

#import "WeiXinTableViewController.h"
#import "tongXunLuController.h"

@interface WXTableBarViewController ()

@end

@implementation WXTableBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //设置底部属性
    WeiXinTableViewController *homeVC = [[WeiXinTableViewController alloc]init];
    [self addChildViewController:homeVC showImage:@"tabbar_mainframe" mainTitle:@"微信"];
    tongXunLuController *tongXunLuVC = [[tongXunLuController alloc]init];
    [self addChildViewController:tongXunLuVC showImage:@"tabbar_contacts" mainTitle:@"通信录"];
    BaseNavigationController *discoverVC = [[BaseNavigationController alloc]init];
    [self addChildViewController:discoverVC showImage:@"tabbar_discover" mainTitle:@"发现"];
    BaseNavigationController *meVC = [[BaseNavigationController alloc]init];
    [self addChildViewController:meVC showImage:@"tabbar_me" mainTitle:@"我"];
    
}

#pragma mark 重写添加tabelBar子控件方法
- (void)addChildViewController:(UIViewController *)childController showImage:(NSString *)imageName mainTitle:(NSString *)title{
    //设置正常显示图片
    childController.tabBarItem.image = [[UIImage imageNamed:imageName]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //选中图片
    childController.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"%@HL",imageName]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childController.tabBarItem.title = title;
    childController.navigationItem.title = title;
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //设置选中文字颜色
    dict[NSForegroundColorAttributeName] = [UIColor colorWithRed:14.0/255.0 green:180.0/255.0 blue:0.0/255.0 alpha:1.0];
    [childController.tabBarItem setTitleTextAttributes:dict forState:UIControlStateSelected];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:childController];
///  设置导航条的背景颜色
    [nav.navigationBar setBarTintColor:[UIColor blueColor]];
    [nav.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    [self addChildViewController:nav];

}

@end
