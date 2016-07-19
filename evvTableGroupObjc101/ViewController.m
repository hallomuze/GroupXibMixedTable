//
//  ViewController.m
//  evvTableGroupObjc101
//
//  Created by artist on 7/15/16.
//  Copyright © 2016 Ever8greener. All rights reserved.
//

#import "ViewController.h"
#import "EVTableViewGroup.h"
#import "CloverTableViewController.h"
#import "CloverGroupTVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)goAction:(id)sender {
    self.view.backgroundColor = [UIColor yellowColor];
    
    EVTableViewGroup* vc = [[EVTableViewGroup alloc]init];
    //EVTableViewGroup *vc = [[EVTableViewGroup alloc] initWithNibName:@"EVTableViewGroup" bundle:nil]; // 이렇게 해도 됨.
    
    [self.navigationController pushViewController:vc animated:YES];
    
    //[self presentViewController:vc2 animated:YES completion:nil];
    // => default project의 경우에는 스토리보드에 ViewController 만 딸랑 있기 때문에 이렇게 작동시켜야 함.
}

- (IBAction)goCloverAction:(id)sender {
    
      self.view.backgroundColor = [UIColor greenColor];
    
    CloverTableViewController* vc = [[CloverTableViewController alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)goCloverGroupAction:(id)sender {
    
    self.view.backgroundColor = [UIColor greenColor];
    CloverGroupTVC* vc = [[CloverGroupTVC alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];
}

@end
