//
//  AppDelegate.m
//  NavigationTest03
//
//  Created by chenyufeng on 15/12/3.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

  
  
  
  
  
  //注意这里非常重要，我的程序完全没有使用storyboard，包括启动后的第一个界面也是通过xib来加载的。
  /*下面的方法有两个作用：
  
   (1)使第一个界面为MainViewController，并且该界面是用xib实现的；
  （2）增加导航栏；
   
  */
  
  //设置整个界面的大小；
  self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
  
  //设置根控制器为MainViewController；
  self.window.rootViewController=[[MainViewController alloc]init];
  
  //把导航栏设置到根控制器；
  self.naviController = [[UINavigationController alloc] initWithRootViewController:self.window.rootViewController];
  
  //把控制器加入到界面中；
  [self.window addSubview:self.naviController.view];
  
  
  [self.window makeKeyAndVisible];
  
  
  
  return YES;
}



@end
