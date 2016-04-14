//
//  LoginViewController.m
//  bate
//
//  Created by 袁文轶 on 16/4/12.
//  Copyright © 2016年 袁文轶. All rights reserved.
//

#import "LoginViewController.h"
#import "FirstViewController.h"
#import "RegisteredViewController.h"
#import "BateViewController.h"
@interface LoginViewController ()<sendValueDelegate, UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *passWord;
@property (weak, nonatomic) IBOutlet UIButton *denglu;
@property (weak, nonatomic) IBOutlet UIButton *zhuce;
- (IBAction)dengluClick:(UIButton *)sender;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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

- (IBAction)dengluClick:(UIButton *)sender {
    if (_userName.text.length == 0 || _passWord.text.length == 0 ) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"登录失败" message:@"账号/密码不能为空" delegate:nil cancelButtonTitle:@"知道了" otherButtonTitles: nil];
        [alert show];
    } else if (![[NSUserDefaults standardUserDefaults]objectForKey:_userName.text]){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"登录失败" message:@"账号不存在" delegate:nil cancelButtonTitle:@"知道了" otherButtonTitles: nil];
        [alert show];
    } else if (![[[NSUserDefaults standardUserDefaults]objectForKey:_userName.text] isEqualToString:_passWord.text]){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"登录失败" message:@"密码错误" delegate:nil cancelButtonTitle:@"知道了" otherButtonTitles: nil];
        [alert show];
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"登录成功" message:@"2333333" delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
      
        [alert show];
        //FirstViewController *First = [[FirstViewController alloc]init];
        
        //[self presentViewController:First animated:YES completion:nil];
    }

 

}
-(void)sendValue:(id)sender1 andValue:(id)sender2
{
    _userName.text = sender1;
    _passWord.text = sender2;
}


-(void)alertView:(UIAlertController *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    FirstViewController *First = [storyboard instantiateViewControllerWithIdentifier:@"First"];
    [self presentViewController:First animated:YES completion:nil];
 
}
@end
