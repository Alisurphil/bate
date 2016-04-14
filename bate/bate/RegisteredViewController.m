//
//  RegisteredViewController.m
//  bate
//
//  Created by 袁文轶 on 16/4/12.
//  Copyright © 2016年 袁文轶. All rights reserved.
//

#import "RegisteredViewController.h"
#import "BateViewController.h"
@interface RegisteredViewController ()<UIAlertViewDelegate>

@end

@implementation RegisteredViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"注册页面";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)goClick:(UIButton *)sender {
    
    if (_username.text.length ==0 || _paw1.text.length ==0 || _paw2.text.length ==0) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"注册失败" message:@"请填写完整" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alert show];
    } else {
        if (![_paw1.text isEqualToString:_paw2.text]) {
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"注册失败" message:@"两次输入的密码不一致" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
            [alert show];
        } else {
            if ([[NSUserDefaults standardUserDefaults]objectForKey:_username.text]) {
                UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"注册失败" message:@"该用户已存在" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
                [alert show];
            } else {
                [[NSUserDefaults standardUserDefaults]setObject:_paw1.text forKey:_username.text];
                [[NSUserDefaults standardUserDefaults]synchronize];
                UIAlertView *alery = [[UIAlertView alloc]initWithTitle:@"注册成功" message:@"23333" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
                [self dismissViewControllerAnimated:YES completion:nil];
                [alery show];
            }
            
        }
    }
    
}

- (IBAction)quxiaoClick:(UIButton *)sender forEvent:(UIEvent *)event {
    //LoginViewController *mvc = [[LoginViewController alloc]init];
    [self dismissViewControllerAnimated:YES completion:nil];
    //[self.navigationController pushViewController:mvc animated:YES];
    //[self.navigationController popViewControllerAnimated:YES];
}



-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    [self.delegate sendValue:_username.text andValue:_paw1.text];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
