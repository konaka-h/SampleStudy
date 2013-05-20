//
//  Test2ChildViewController.h
//  SampleStudy
//
//  Created by konaka-h on 2013/05/17.
//  Copyright (c) 2013年 konaka-h. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^buttonAActionBlock)(NSString* message);
typedef void (^buttonBActionBlock)(NSString* message);

@interface Test2ChildViewController : UIViewController

// 元々ある(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNilの拡張版
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil buttonAActionBlock:(buttonAActionBlock)buttonA buttonBActionBlock:(buttonBActionBlock) buttonB;

@end
