//
//  Test2ParentViewController.m
//  SampleStudy
//
//  Created by konaka-h on 2013/05/17.
//  Copyright (c) 2013年 konaka-h. All rights reserved.
//

#import "Test2ParentViewController.h"
#import "Test2ChildViewController.h"

@interface Test2ParentViewController ()

@end

@implementation Test2ParentViewController

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
    Test2ChildViewController *vc = [[Test2ChildViewController alloc]
                                    initWithNibName:@"Test2ChildViewController"
                                    bundle:nil
                                    buttonAActionBlock:^(NSString *message)
                                    {
                                        // Aボタン押下時の処理
                                        [self.messageLabel setText:[NSString stringWithFormat:@"Aボタンタップ %@ ",message]];
                                    }
                                    buttonBActionBlock:^(NSString *message)
                                    {
                                        // Bボタン押下時の処理
                                        [self.messageLabel setText:[NSString stringWithFormat:@"Bボタンタップ %@ ",message]];
                                    }];
    
    // 子画面に遷移
    [self.navigationController pushViewController:vc animated:YES];
    
}

// ======ポイント=============================================================

@end
