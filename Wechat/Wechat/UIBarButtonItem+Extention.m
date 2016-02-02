//
//  UIBarButtonItem+Extention.m
//  Wechat
//
//  Created by admin on 16/2/2.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "UIBarButtonItem+Extention.h"
#import "UIView+Extension.h"

@implementation UIBarButtonItem (Extention)

///  通过一个按钮返回一个点击事件
///
///  @param image  按钮显示的图片
///  @param target 按钮的执行者
///  @param action 按钮响应事件
///
///  @return 返回的事件
+ (instancetype)itemSetImage:(NSString *)image Target:(id)target action:(SEL)action{
    UIButton *btn = [[UIButton alloc]init];
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_selected",image]] forState:UIControlStateSelected];
    btn.size = btn.currentImage.size;
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc]initWithCustomView:btn];
}
@end
