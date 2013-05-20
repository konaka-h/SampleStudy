//
//  Test3ParentViewController.m
//  SampleStudy
//
//  Created by konaka-h on 2013/05/17.
//  Copyright (c) 2013年 konaka-h. All rights reserved.
//

#import "Test3ParentViewController.h"
#import "Test3ChildViewController.h"

@interface Test3ParentViewController ()

@end

@implementation Test3ParentViewController

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
    
    // デフォルトの通知センターを取得する
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    
    // 通知センターに通知要求を登録する
    // この例だと、通知センターに"actionA"という名前の通知がされた時に、
    // buttonAtouch:メソッドを呼び出すという通知要求の登録を行っている。
    [nc addObserver:self selector:@selector(buttonAtouch:) name:@"actionA" object:nil];
    
    // 通知センターに通知要求を登録する
    [nc addObserver:self selector:@selector(buttonBtouch:) name:@"actionB" object:nil];
    
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

// 子画面へボタンタップ時
- (IBAction)childTransAction:(id)sender {
    
    // 子画面のインスタンス作成
    Test3ChildViewController *vc = [[Test3ChildViewController alloc]
                                    initWithNibName:@"Test3ChildViewController"
                                    bundle:nil];
    
    // 子画面に遷移
    [self.navigationController pushViewController:vc animated:YES];
}

// Aボタンタップ時に通知センター経由で呼び出されるメソッド
- (void) buttonAtouch:(NSNotificationCenter*)center
{
    // 通知の送信側から送られた値を取得する
    NSString *message = [[center userInfo] objectForKey:@"message"];
    
    // Aボタン押下時の処理
    [self.messageLabel setText:[NSString stringWithFormat:@"Aボタンタップ %@ ",message]];
}

// Bボタンタップ時に通知センター経由で呼び出されるメソッド
- (void) buttonBtouch:(NSNotificationCenter*)center
{
    // 通知の送信側から送られた値を取得する
    NSString *message = [[center userInfo] objectForKey:@"message"];
    
    // Bボタン押下時の処理
    [self.messageLabel setText:[NSString stringWithFormat:@"Bボタンタップ %@ ",message]];
}

@end
