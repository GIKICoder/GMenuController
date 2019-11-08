//
//  GTableTableViewController.m
//  GMenuControllerExample
//
//  Created by GIKI on 2018/3/26.
//  Copyright © 2018年 GIKI. All rights reserved.
//

#import "GTableTableViewController.h"
#import <GMenuController/GMenuController.h>

@interface GTableTableViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation GTableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:({
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView;
    })];
    _tableView.frame = self.view.bounds;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier "];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"reuseIdentifier"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"index--%ld",indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UITableViewCell *currentCell = [tableView cellForRowAtIndexPath:indexPath];
    [self showMenu:currentCell];
}

- (void)showMenu:(UITableViewCell*)currentCell
{
    GMenuItem *item1 = [[GMenuItem alloc] initWithTitle:@"选择" image:[UIImage imageNamed:@"star"] target:self action:@selector(test)];
    GMenuItem *item2 = [[GMenuItem alloc] initWithTitle:@"复制" image:[UIImage imageNamed:@"star"] target:self action:@selector(test)];
    GMenuItem *item3 = [[GMenuItem alloc] initWithTitle:@"全选" image:[UIImage imageNamed:@"star"] target:self action:@selector(test)];
    GMenuItem *item4= [[GMenuItem alloc] initWithTitle:@"收藏" image:[UIImage imageNamed:@"star"] target:self action:@selector(test)];
    GMenuItem *item5 = [[GMenuItem alloc] initWithTitle:@"更多" image:[UIImage imageNamed:@"star"] target:self action:@selector(test)];
    GMenuItem *item6 = [[GMenuItem alloc] initWithTitle:@"搜索" image:[UIImage imageNamed:@"star"] target:self action:@selector(test)];
    NSArray* arr1 = @[item1,item2,item3,item4,item5,item6];
    [[GMenuController sharedMenuController] setMenuItems:arr1];
    [[GMenuController sharedMenuController] setTargetRect:currentCell.frame inView:self.tableView];
    [[GMenuController sharedMenuController] setMenuVisible:YES];
}

- (void)test
{}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
