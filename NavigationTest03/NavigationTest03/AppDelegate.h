//
//  AppDelegate.h
//  NavigationTest03
//
//  Created by chenyufeng on 15/12/3.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


//定义全局可用的导航栏；
@property(nonatomic,strong) UINavigationController *naviController;

//作为导航栏的第一个ViewController，也就是rootViewController；
//@property(nonatomic,strong) MainViewController *rootViewController;

@end

