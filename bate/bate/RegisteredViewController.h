//
//  RegisteredViewController.h
//  bate
//
//  Created by 袁文轶 on 16/4/12.
//  Copyright © 2016年 袁文轶. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol sendValueDelegate <NSObject>

-(void)sendValue:(id)sender1 andValue:(id)sender2;

@end

@interface RegisteredViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *paw1;
@property (weak, nonatomic) IBOutlet UITextField *paw2;
- (IBAction)goClick:(UIButton *)sender;

- (IBAction)quxiaoClick:(UIButton *)sender forEvent:(UIEvent *)event;


@property (nonatomic, assign) id <sendValueDelegate>  delegate;
@end
