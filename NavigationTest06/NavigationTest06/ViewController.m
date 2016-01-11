//
//  ViewController.m
//  NavigationTest06
//
//  Created by chenyufeng on 15/12/6.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"


@interface ViewController ()

@end
/*
 上一个实例实现的是
 这里要实现的是push时的动画效果；
 
 */
@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
}

- (IBAction)buttonPressed:(id)sender {
  //push时的跳转动画；
  CATransition *animation = [CATransition animation];
//  [animation setDuration:0.3];
  [animation setType: kCATransitionPush];
  [animation setSubtype: kCATransitionFromRight];
  [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault]];

  SecondViewController *second = [[SecondViewController alloc] init];
  second = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
  [self.navigationController pushViewController:second animated:false];
  [self.navigationController.view.layer addAnimation:animation forKey:nil];
}

@end
