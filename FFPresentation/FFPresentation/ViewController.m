//
//  ViewController.m
//  FFPresentation
//
//  Created by 张玲玉 on 16/7/31.
//  Copyright © 2016年 张玲玉. All rights reserved.
//

#import "ViewController.h"
#import "FFSecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置通知
    UIUserNotificationSettings *setting=[UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeBadge categories:nil];
    [[UIApplication sharedApplication]registerUserNotificationSettings:setting];
}

// 1.只要调用了[self presentViewController:second animated:YES completion:nil];方法
// 2.首先会创建一个UIPresentationController
// 3.然后由UIPresentationController管理控制器的切换

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //图标数字
    [UIApplication sharedApplication].applicationIconBadgeNumber=10;
    
    FFSecondViewController *second=[[FFSecondViewController alloc]init];
    
    //second.modalPresentationStyle=UIModalPresentationFormSheet;
    
    second.modalPresentationStyle=UIModalPresentationPopover;
    second.popoverPresentationController.barButtonItem=self.navigationItem.leftBarButtonItem;
    
    [self presentViewController:second animated:YES completion:nil];
}

@end
