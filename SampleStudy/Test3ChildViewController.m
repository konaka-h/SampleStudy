//
//  Test3ChildViewController.m
//  SampleStudy
//
//  Created by konaka-h on 2013/05/20.
//  Copyright (c) 2013年 konaka-h. All rights reserved.
//

#import "Test3ChildViewController.h"

@interface Test3ChildViewController ()

@end

@implementation Test3ChildViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Aボタンタップ時
- (IBAction)actionA:(id)sender {
    
    // 通知の受取側に送る値を作成する
    NSDictionary *dic = [NSDictionary dictionaryWithObject:@"A" forKey:@"message"];
    
    // "actionA"をキーに通知を作成する
    NSNotification *n = [NSNotification notificationWithName:@"actionA" object:self userInfo:dic];
    
    // 通知を実行する
    [[NSNotificationCenter defaultCenter] postNotification:n];
    
    // 前画面に戻る
    [self.navigationController popViewControllerAnimated:YES];
}


// Bボタンタップ時
- (IBAction)actionB:(id)sender {
    
    // 通知の受取側に送る値を作成する
    NSDictionary *dic = [NSDictionary dictionaryWithObject:@"B" forKey:@"message"];
    
    // "actionB"をキーに通知を作成する
    NSNotification *n = [NSNotification notificationWithName:@"actionB" object:self userInfo:dic];
    
    // 通知を実行する
    [[NSNotificationCenter defaultCenter] postNotification:n];
    
    // 前画面に戻る
    [self.navigationController popViewControllerAnimated:YES];
}

@end
