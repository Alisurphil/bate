//
//  ViewController.h
//  bate
//
//  Created by 袁文轶 on 16/4/12.
//  Copyright © 2016年 袁文轶. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"
#import "ThirdTableViewController.h"
#import "LoginViewController.h"
#import "SecondViewController.h"
#import <sqlite3.h>

@interface ViewController : UIViewController{
    sqlite3 * db;
}



@end

