//
//  Test1ChildViewController.h
//  SampleStudy
//
//  Created by konaka-h on 2013/05/17.
//  Copyright (c) 2013年 konaka-h. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Test1ChildViewController : UIViewController

@property (assign) id delegate; // デリゲート（親のインスタンスを設定してもらう想定）

// 元々ある(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNilの拡張版
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil delegate:(id)dg;

@end

// プロトコル（当クラスを利用するクラスに実装してもらう想定）
@protocol Test1ChildViewControllerDelegate<NSObject>

// 子からの通知を受け取る
- (void) buttonAtouch:(NSString*) message;
- (void) buttonBtouch:(NSString*) message;

@end