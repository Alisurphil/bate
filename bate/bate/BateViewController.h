//
//  BateViewController.h
//  bate
//
//  Created by 袁文轶 on 16/4/12.
//  Copyright © 2016年 袁文轶. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdTableViewController.h"
#import "LoginViewController.h"
@interface BateViewController : UITabBarController<UITabBarControllerDelegate>
@property (strong, nonatomic) LoginViewController *loginVC;

@property (strong,nonatomic) UINavigationController *FirstNC;
@property (strong,nonatomic) FirstViewController *FirstVC;

@property (strong,nonatomic) UINavigationController *SecondNC;
@property (strong,nonatomic) SecondViewController *SecondVC;

@property (strong,nonatomic) UINavigationController *ThirdNC;
@property (strong,nonatomic) ThirdTableViewController *ThirdVC;
@end
