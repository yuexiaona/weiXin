//
//  tongXunLuController.m
//  Wechat
//
//  Created by admin on 16/2/2.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "tongXunLuController.h"
#import "UIBarButtonItem+Extention.h"

@implementation tongXunLuController

//程序加载完成调用方法
- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemSetImage:@"tabbar_profile" Target:self action:@selector(createTableViewController)];

}

- (void)createTableViewController{
//    UITableViewController
}
@end
