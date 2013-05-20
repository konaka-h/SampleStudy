//
//  Test1ParentViewController.m
//  SampleStudy
//
//  Created by konaka-h on 2013/05/17.
//  Copyright (c) 2013年 konaka-h. All rights reserved.
//

#import "Test1ParentViewController.h"

@interface Test1ParentViewController ()

@end

@implementation Test1ParentViewController

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

- (void)dealloc {
    [_messageLabel release];
    [super dealloc];
}

// ======ポイント=============================================================

// 子画面へボタンタップ時
- (IBAction)childTransAction:(id)sender {
    
    // 子画面のインスタンス作成
    Test1ChildViewController *vc = [[Test1ChildViewController alloc]
                                    initWithNibName:@"Test1ChildViewController"
                                    bundle:nil
                                    delegate:self];
    
    // 子画面に遷移
    [self.navigationController pushViewController:vc animated:YES];
}

//===========================
// 以下child画面のdelegateを実装
//===========================

// Aボタンタップdelegate
- (void) buttonAtouch:(NSString *)message
{
    // Aボタン押下時の処理
    [self.messageLabel setText:[NSString stringWithFormat:@"Aボタンタップ %@ ",message]];
}

// Bボタンタップdelegate
- (void) buttonBtouch:(NSString *)message
{
    // Bボタン押下時の処理
    [self.messageLabel setText:[NSString stringWithFormat:@"Bボタンタップ %@ ",message]];
}

// ======ポイント=============================================================

@end
