//
//  AppDelegate.m
//  NavigationTest
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

  
  
  
  
  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  self.window.rootViewController = [[MainViewController alloc] init];
  
  self.naviController = [[UINavigationController alloc] initWithRootViewController:self.window.rootViewController];
  
  [self.window addSubview:self.naviController.view];
  [self.window makeKeyAndVisible];
  
  return YES;
}



@end
