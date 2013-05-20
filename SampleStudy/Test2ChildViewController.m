//
//  Test2ChildViewController.m
//  SampleStudy
//
//  Created by konaka-h on 2013/05/17.
//  Copyright (c) 2013年 konaka-h. All rights reserved.
//

#import "Test2ChildViewController.h"

@interface Test2ChildViewController ()

@property (nonatomic, copy) buttonAActionBlock buttonAAction;   //buttonAタップ時に呼び出すブロック
@property (nonatomic, copy) buttonBActionBlock buttonBAction;   //buttonBタップ時に呼び出すブロック

@end

@implementation Test2ChildViewController

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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil buttonAActionBlock:(buttonAActionBlock)buttonA buttonBActionBlock:(buttonBActionBlock)buttonB
{
    // 既存に存在するinitWithNibName:nibNameOrNil bundle:nibBundleOrNil　メソッドをコール
    self = [self initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    // ブロックも登録セットしとく
    self.buttonAAction = buttonA;
    self.buttonBAction = buttonB;
    
    return self;
}

- (void)dealloc {
    [self.buttonAAction release];
    [self.buttonBAction release];
    [super dealloc];
}

// Aボタンタップ時
- (IBAction)actionA:(id)sender {
    
    // ブロックが設定されているか調べる
    if (self.buttonAAction) {
        // ブロックの呼び出し
        self.buttonAAction(@"A");
    }
    
    // 前画面に戻る
    [self.navigationController popViewControllerAnimated:YES];
}

// Bボタンタップ時
- (IBAction)actionB:(id)sender {
    
    // ブロックが設定されているか調べる
    if (self.buttonBAction) {
        // ブロックの呼び出し
        self.buttonBAction(@"B");
    }
    
    // 前画面に戻る
    [self.navigationController popViewControllerAnimated:YES];
}

@end
