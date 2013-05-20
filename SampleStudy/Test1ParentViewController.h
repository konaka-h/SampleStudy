//
//  Test1ParentViewController.h
//  SampleStudy
//
//  Created by konaka-h on 2013/05/17.
//  Copyright (c) 2013年 konaka-h. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Test1ChildViewController.h"

@interface Test1ParentViewController : UIViewController <Test1ChildViewControllerDelegate>

@property (retain, nonatomic) IBOutlet UILabel *messageLabel;   // 子画面からのメッセージを表示するラベル

@end


