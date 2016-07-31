//
//  FFSecondViewController.m
//  FFPresentation
//
//  Created by 张玲玉 on 16/7/31.
//  Copyright © 2016年 张玲玉. All rights reserved.
//

#import "FFSecondViewController.h"

@interface FFSecondViewController ()

@end

@implementation FFSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor orangeColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
