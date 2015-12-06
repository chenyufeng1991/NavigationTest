//
//  ViewController.m
//  NavigationTest
//
//  Created by chenyufeng on 15/12/3.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "MainViewController.h"
#import "SecondViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  
  self.title = @"首页";
  
}

/*
 无法执行这里的点击操作：
 （1）storyboard添加按钮+代码生成navigationController+使用push进行跳转；-->该按钮无法点击，无法进行跳转；
  (2)storyboard添加按钮+代码生成navigationController+使用presentViewController进行跳转；-->该按钮无法点击，无法进行跳转；
*/

//无法执行该方法；
- (IBAction)buttonPressed:(id)sender {
  
  NSLog(@"111111");
  
  SecondViewController *secondViewController = [[SecondViewController alloc] init];
  [self.navigationController pushViewController:secondViewController animated:true];

//  [self presentViewController:secondViewController animated:true completion:nil];
  
  
}


@end
