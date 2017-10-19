//
//  ViewController.m
//  GMenuControllerExample
//
//  Created by GIKI on 2017/10/11.
//  Copyright © 2017年 GIKI. All rights reserved.
//

#import "ViewController.h"
#import "GMenuController.h"
@interface ViewController ()
@property (nonatomic, strong) NSArray  *arr1;
@property (nonatomic, strong) NSArray  *arr2;
@property (nonatomic, strong) NSArray  *arr3;
@property (nonatomic, strong) NSArray  *arr4;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    GMenuItem *item1 = [[GMenuItem alloc] initWithTitle:@"选择" target:self action:@selector(test)];
    GMenuItem *item2 = [[GMenuItem alloc] initWithTitle:@"复制" target:self action:@selector(test)];
    GMenuItem *item3 = [[GMenuItem alloc] initWithTitle:@"全选" target:self action:@selector(test)];
    GMenuItem *item4= [[GMenuItem alloc] initWithTitle:@"收藏" target:self action:@selector(test)];
    GMenuItem *item5 = [[GMenuItem alloc] initWithTitle:@"更多" target:self action:@selector(test)];
    GMenuItem *item6 = [[GMenuItem alloc] initWithTitle:@"可以有多个文字,行为与系统menuview完全一致" target:self action:@selector(test)];
    self.arr1 = @[item1,item2,item3];
    self.arr2 = @[item6,item3,item2,item1];
    self.arr3 = @[item1,item2,item3,item4,item5];
    self.arr4 = @[item1,item2,item3,item4,item5,item6];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn1:(UIButton*)sender {
    
    GMenuItem *item1 = [[GMenuItem alloc] initWithTitle:@"选择" image:[UIImage imageNamed:@"star"] target:self action:@selector(test)];
    GMenuItem *item2 = [[GMenuItem alloc] initWithTitle:@"复制" image:[UIImage imageNamed:@"star"] target:self action:@selector(test)];
    GMenuItem *item3 = [[GMenuItem alloc] initWithTitle:@"全选" image:[UIImage imageNamed:@"star"] target:self action:@selector(test)];
     self.arr1 = @[item1,item2,item3];
    [[GMenuController sharedMenuController] setMenuItems:self.arr1];
    [[GMenuController sharedMenuController] setTargetRect:sender.frame inView:self.view];
    [[GMenuController sharedMenuController] setMenuVisible:YES];
    
}
- (IBAction)btn2:(UIButton*)sender {
    [[GMenuController sharedMenuController] setMenuItems:self.arr2];
    [[GMenuController sharedMenuController] setTargetRect:sender.frame inView:self.view];
    [[GMenuController sharedMenuController] setMenuVisible:YES];
    
}
- (IBAction)btn3:(UIButton*)sender {
    [[GMenuController sharedMenuController] setMenuItems:self.arr3];
    [[GMenuController sharedMenuController] setTargetRect:sender.frame inView:self.view];
    [[GMenuController sharedMenuController] setMenuVisible:YES];
    
}
- (IBAction)btn4:(UIButton*)sender {
    [[GMenuController sharedMenuController] setMenuItems:self.arr4];
    [[GMenuController sharedMenuController] setTargetRect:sender.frame inView:self.view];
    [[GMenuController sharedMenuController] setMenuVisible:YES];
    
}

- (void)test{

    [[GMenuController sharedMenuController] setMenuVisible:NO];
    
}
@end
