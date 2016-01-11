//
//  ViewController.m
//  NavigationTest02
//
//  Created by chenyufeng on 15/12/3.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "MainViewController.h"
#import "SecondViewController.h"

@interface MainViewController ()

@end

/*
 （1）storyboard生成ViewController并添加按钮+代码生成navigationController+使用pushpushViewController跳转到另一个storyboard生成的ViewController；-->该按钮无法点击，无法进行跳转；
 (2) storyboard生成ViewController并添加按钮+代码生成navigationController+使用presentViewController跳转到另一个storyboard生成的ViewController；-->该按钮无法点击，无法进行跳转；

  (3)storyboard生成ViewController并添加按钮+storyboard中Action Segue使用push跳转到另一个storyboard生成的ViewController；-->报错，无法跳转，提示：“Push segues can only be used when the source controller is managed by an instance of UINavigationController.”；
 （4）storyboard生成ViewController并添加按钮+storyboard中Action Segue使用modal跳转到另一个storyboard生成的ViewController；-->正常，可以进行跳转；
 （5）storyboard生成ViewController并添加按钮+storyboard中在第一个ViewController中生成导航栏+storyboard中Action Segue使用push跳转到另一个storyboard生成的ViewController；-->正常，可以进行跳转，并可以使用导航栏自带的返回按钮返回上一个页面；
 （6）storyboard生成ViewController并添加按钮+storyboard中在第一个ViewController中生成导航栏+storyboard中Action Segue使用modal跳转到另一个storyboard生成的ViewController；-->跳转正常，但是第二个界面不会出现导航栏，该方法不可行；

 (7)storyboard生成ViewController并添加按钮+storyboard在第一个ViewController中生成导航栏+使用pushViewController跳转到另一个storyboard生成的ViewController；-->跳转正常，但中间会出现卡顿，第二个界面会出现黑屏，该方法不可行；
 (8)storyboard生成ViewController并添加按钮+storyboard在第一个ViewController中生成导航栏+使用presentViewController跳转到另一个storyboard生成的ViewController；-->跳转正常,第二个界面是黑屏，该方法不可行；

（9）storyboard生成ViewController并添加按钮+storyboard中不添加任何导航栏+使用presentViewController跳转到另一个xib生成的ViewController；-->正常，可以进行跳转；
 (10)storyboard生成ViewController并添加按钮+storyboard中不添加任何导航栏+使用pushViewController跳转到另一个xib生成的ViewController；-->按钮可以进行点击，但没有任何响应，不能进行跳转；
（11）storyboard生成ViewController并添加按钮+storyboard中添加导航栏+使用presentViewController跳转到另一个xib生成的ViewController；-->跳转正常，但是第二个界面不会出现导航栏，该方法不可行，同（6）；
（12）storyboard生成ViewController并添加按钮+storyboard中添加导航栏+使用pushViewController跳转到另一个xib生成的ViewController；-->正常，可以进行跳转，并可以使用导航栏自带的返回按钮返回上一个页面；同（5）；

 */

@implementation MainViewController

- (void)viewDidLoad {

  [super viewDidLoad];
}

- (IBAction)buttonPressed:(id)sender {

  SecondViewController *second = [[SecondViewController alloc] init];
//  [self presentViewController:second animated:true completion:nil];
  [self.navigationController pushViewController:second animated:true];
}

@end
