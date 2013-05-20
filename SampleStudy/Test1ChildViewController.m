//
//  Test1ChildViewController.m
//  SampleStudy
//
//  Created by konaka-h on 2013/05/17.
//  Copyright (c) 2013年 konaka-h. All rights reserved.
//

#import "Test1ChildViewController.h"

@interface Test1ChildViewController ()

@end

@implementation Test1ChildViewController

@synthesize delegate;

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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil delegate:(id)dg
{
    // 既存に存在するinitWithNibName:nibNameOrNil bundle:nibBundleOrNil　メソッドをコール
    self = [self initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    // delegateをセットしとく
    self.delegate = dg;
    
    return self;
}

// Aボタンタップ時
- (IBAction)actionA:(id)sender {
    
    // デリゲートが指定のメソッドを定義しているか調べる
    if ([self.delegate respondsToSelector:@selector(buttonAtouch:)]){
        // メソッド呼び出し
        [self.delegate buttonAtouch:@"A"];
    }
    
    // 前画面に戻る
    [self.navigationController popViewControllerAnimated:YES];
}

// Bボタンタップ時
- (IBAction)actionB:(id)sender {
    
    // デリゲートが指定のメソッドを定義しているか調べる
    if ([self.delegate respondsToSelector:@selector(buttonBtouch:)]){
        // メソッド呼び出し
        [self.delegate buttonBtouch:@"B"];
    }
    
    // 前画面に戻る
    [self.navigationController popViewControllerAnimated:YES];
}

@end
