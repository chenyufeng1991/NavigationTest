
//
//  SecondViewController.m
//  NavigationTest04
//
//  Created by chenyufeng on 15/12/3.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "MainViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

  
  self.title = @"第二页";
  
  
}


- (IBAction)buttonPressed:(id)sender {

  ThirdViewController *third = [[ThirdViewController alloc] init];
  [self.navigationController pushViewController:third animated:true];


}

/*
 返回方法区别：
 dismiss是用在使用presentViewController的跳转；
 popViewControllerAnimation是用在push的跳转；
 
 
 */

/*
 返回方法汇总：
 （1）xib文件定义第一个ViewController+使用代码生成导航栏+使用pushViewController进行跳转+使用导航栏默认返回键返回-->能够正常进行返回，提倡这种方式；
 （2）xib文件定义第一个ViewController+使用代码生成导航栏+使用pushViewController进行跳转+使用某按钮点击执行[[self navigationController] popViewControllerAnimated:true]返回-->能够正常进行返回，提倡这种方式，同（1）；
 （3）xib文件定义第一个ViewController+使用代码生成导航栏+使用presentViewController进行跳转+使用dismissViewControllerAnimated进行返回-->可以正常进行跳转与返回，但会导致第一个界面有导航栏，第二个界面没有导航栏，不提倡这种方式；
 （4）xib文件定义第一个ViewController+使用presentViewController进行跳转+使用dismissViewControllerAnimated进行返回-->能够正常进行跳转返回，modal视图下提倡这种方式；
 
 
 （5）xib文件定义第一个ViewController+使用代码生成导航栏+使用pushViewController进行跳转+使用dismissViewControllerAnimated进行返回-->无法进行正常的返回；
 （6）xib文件定义第一个ViewController+使用代码生成导航栏+使用presentViewController进行跳转+使用[[self navigationController] popViewControllerAnimated:true]进行返回-->无法进行正常的返回；
 
 
 总结：如果使用了导航栏，就配对使用push和pop进行跳转返回；
      如果没有使用导航栏，就配对使用present和dismiss进行跳转返回；
 
 
 
 */

- (IBAction)backButtonPressed:(id)sender {
  
  
  //返回上一个页面；
  //类似导航栏自带的返回按钮；
  [[self navigationController] popViewControllerAnimated:true];
  
//  [self dismissViewControllerAnimated:true completion:nil];
  

  
}




@end
