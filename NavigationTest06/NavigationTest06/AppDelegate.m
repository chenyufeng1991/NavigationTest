//
//  AppDelegate.m
//  NavigationTest06
//
//  Created by chenyufeng on 15/12/6.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //如果使用了storyboard，导航栏可以使用以下代码生成；
    //和没有storyboard而使用xib生成导航栏只差2行代码；
    self.naviController = [[UINavigationController alloc] initWithRootViewController:self.window.rootViewController];
    [self.window addSubview:self.naviController.view];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
