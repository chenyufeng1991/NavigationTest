
//
//  MainViewController.m
//  NavigationTest04
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

  self.title = @"第一页";
  
  
  
  
}

- (IBAction)buttonPressed:(id)sender {
  
  SecondViewController *second = [[SecondViewController alloc] init];
//  [self.navigationController pushViewController:second animated:true];
  
  [self presentViewController:second animated:true completion:nil];
}


@end
