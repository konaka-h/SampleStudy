//
//  ViewController.m
//  SampleStudy
//
//  Created by konaka-h on 2013/05/17.
//  Copyright (c) 2013年 konaka-h. All rights reserved.
//

#import "ViewController.h"
#import "Test1ParentViewController.h"
#import "Test2ParentViewController.h"
#import "Test3ParentViewController.h"

@interface ViewController ()
{
    NSArray *tableData;
}
@end

@implementation ViewController

// 当クラス読み込み時に呼ばれる
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    tableData = [[NSArray alloc]initWithObjects:@"delegateサンプル", @"blockサンプル", @"notificationサンプル", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 当クラスが破棄された時に呼ばれる
- (void)dealloc {
    [_sampleTable release];
    [super dealloc];
}

//===========================
// 以下tableviewのdelegate
//===========================

// 指定したindexのcellを作成する。
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // セルを再利用するためのコード
    NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    // ただ配列の値を設定しているだけ
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}

// データの総件数を返すメソッド
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tableData count];
}

// セル選択
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 選択状態を解除する（これをしない場合ずっと青く選択されたまま）
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if(indexPath.section == 0) {
        // 1個目のセクションがタップされた場合（１個しかセクションないので必ずここにくる）
        
        // 次の画面に画面遷移
        if (indexPath.row == 0) {
            // 1番上のセル選択時
            Test1ParentViewController *vc = [[Test1ParentViewController alloc] initWithNibName:@"Test1ParentViewController" bundle:nil];
            [self.navigationController pushViewController:vc animated:YES];
        } else if (indexPath.row == 1) {
            // 2番目のセル選択時
            Test2ParentViewController *vc = [[Test2ParentViewController alloc] initWithNibName:@"Test2ParentViewController" bundle:nil];
            [self.navigationController pushViewController:vc animated:YES];
        } else if (indexPath.row == 2) {
            // 3番目のセル選択時
            Test3ParentViewController *vc = [[Test3ParentViewController alloc] initWithNibName:@"Test3ParentViewController" bundle:nil];
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
    
}

@end
