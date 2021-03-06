//
//  BateViewController.m
//  bate
//
//  Created by 袁文轶 on 16/4/12.
//  Copyright © 2016年 袁文轶. All rights reserved.
//

#import "BateViewController.h"

@interface BateViewController ()

@end

@implementation BateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    //在main.story中找到名为first的页面，将该页面设置为_firstVC全局对象
    _FirstVC = [storyboard instantiateViewControllerWithIdentifier:@"First"];
    //将_firstVC设置为_firstNC导航控制器的跟视图
    _FirstNC = [[UINavigationController alloc]initWithRootViewController:_FirstVC];
    //为_firstNC导航控制器设置tab bar item，将该选项卡栏项目的标题设置为first,图片设置为名为first的图片，下表设为0
    _FirstNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"首页" image:[UIImage imageNamed:@"main"] tag:0];
    
    UIStoryboard *storyboard2 = [UIStoryboard storyboardWithName:@"Second" bundle:[NSBundle mainBundle]];
    _SecondVC = [storyboard2 instantiateViewControllerWithIdentifier:@"Second"];
    _SecondNC = [[UINavigationController alloc]initWithRootViewController:_SecondVC];
    _SecondNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"聊天" image:[UIImage imageNamed:@"chat"] tag:1];
    
    UIStoryboard *storyboard3 = [UIStoryboard storyboardWithName:@"Third" bundle:[NSBundle mainBundle]];
    _ThirdVC = [storyboard3 instantiateViewControllerWithIdentifier:@"Third"];
    _ThirdNC = [[UINavigationController alloc]initWithRootViewController:_ThirdVC];
    _ThirdNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"我" image:[UIImage imageNamed:@"me"] tag:2];
    //设置选项卡栏控制器的选项卡栏项目（@［］数组中的每个item都会对应一个选项卡栏项目）
    self.viewControllers = @[_FirstNC,_SecondNC,_ThirdNC];
}
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController;
{
    if (viewController == _FirstNC) {
        NSLog(@"切换到第一个页面");
    }else if (viewController == _SecondNC){
        NSLog(@"切换到第二个页面");
    }else if(viewController == _ThirdNC){
        NSLog(@"切换到第三个页面");
    }

    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
