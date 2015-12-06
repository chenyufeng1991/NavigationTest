//
//  ViewController.m
//  NavigationTest05
//
//  Created by chenyufeng on 15/12/6.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end



/*
 这里是模态视图详解；modal；
 包括跳转的淡入淡出的方式；
 
 
 */

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  
  
  
}

/*
 typedef NS_ENUM(NSInteger, UIModalTransitionStyle) {
 UIModalTransitionStyleCoverVertical = 0,
 UIModalTransitionStyleFlipHorizontal,
 UIModalTransitionStyleCrossDissolve,
 UIModalTransitionStylePartialCurl NS_ENUM_AVAILABLE_IOS(3_2),
 };

 
 */

- (IBAction)buttonpressed:(id)sender {

  
  
  
  UIViewController *second = [[UIViewController alloc ]init];
  second = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
  second.modalTransitionStyle = UIModalTransitionStylePartialCurl;
  
  
  
  [self presentViewController:second animated:true completion:nil];

}



@end
