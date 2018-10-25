//
//  GWKWebView.m
//  GMenuControllerExample
//
//  Created by GIKI on 2017/10/19.
//  Copyright © 2017年 GIKI. All rights reserved.
//

#import "GWKWebView.h"
#import "GMenuController.h"
@implementation GWKWebView

- (BOOL)canPerformAction:(SEL)action withSender:(UIMenuController*)sender
{
//    NSLog(@"test");

    [self evaluateJavaScript:[NSString stringWithFormat:@"window.getSelection().getRangeAt(0);"] completionHandler:^(id _Nullable response, NSError * _Nullable error) {
        
        if (response) {
            NSLog(@"test-- %@",response);
            
            
        }
        //        NSLog(@"response0: %@ error: %@", response, error);
    }];
    GMenuItem *item1 = [[GMenuItem alloc] initWithTitle:@"选择" target:self action:@selector(test)];
    GMenuItem *item2 = [[GMenuItem alloc] initWithTitle:@"复制" target:self action:@selector(test)];
    GMenuItem *item3 = [[GMenuItem alloc] initWithTitle:@"全选" target:self action:@selector(test)];
    NSArray *arr1 = @[item1,item2,item3];
    [[GMenuController sharedMenuController] setMenuItems:arr1];
    [[GMenuController sharedMenuController] setTargetRect:CGRectMake(100, 100, 100, 100) inView:self];
//    [[GMenuController sharedMenuController] setMenuVisible:YES];
//    (origin = (x = 10, y = 255), size = (width = 394, height = 45))
    return NO;
}

- (nullable id)targetForAction:(SEL)action withSender:(nullable id)sender
{
     NSLog(@"testfff");
    return nil;
}
- (void)test
{
    [[GMenuController sharedMenuController] setMenuVisible:NO];
}

- (void)pressesBegan:(NSSet<UIPress *> *)presses withEvent:(nullable UIPressesEvent *)event NS_AVAILABLE_IOS(9_0)
{NSLog(@"pressesBegan");}
- (void)pressesChanged:(NSSet<UIPress *> *)presses withEvent:(nullable UIPressesEvent *)event NS_AVAILABLE_IOS(9_0){NSLog(@"pressesChanged");}
- (void)pressesEnded:(NSSet<UIPress *> *)presses withEvent:(nullable UIPressesEvent *)event NS_AVAILABLE_IOS(9_0){NSLog(@"pressesEnded");}
- (void)pressesCancelled:(NSSet<UIPress *> *)presses withEvent:(nullable UIPressesEvent *)event NS_AVAILABLE_IOS(9_0){NSLog(@"pressesCancelled");}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(nullable UIEvent *)event NS_AVAILABLE_IOS(3_0){NSLog(@"motionBegan");}
- (void)motionEnded:(UIEventSubtype)motion withEvent:(nullable UIEvent *)event NS_AVAILABLE_IOS(3_0){NSLog(@"motionEnded");}
- (void)motionCancelled:(UIEventSubtype)motion withEvent:(nullable UIEvent *)event{
    
    NSLog(@"motionCancelled");
}
@end
