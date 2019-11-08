//
//  GMenuController.h
//  GMenuController
//
//  Created by GIKI on 2017/9/27.
//  Copyright © 2017年 GIKI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "GMenuControllerHeader.h"
#import "GMenuViewContainer.h"

NS_ASSUME_NONNULL_BEGIN

@class GMenuItem, GMenuViewContainer;

@interface GMenuController : NSObject

+ (GMenuController *)sharedMenuController;

@property(nonatomic,getter=isMenuVisible) BOOL menuVisible;        // default is NO

@property(nonatomic) GMenuControllerArrowDirection arrowDirection ; // default is GMenuControllerArrowDefault

@property(nullable, nonatomic,copy) NSArray<GMenuItem *> *menuItems; // default is nil. these are in addition to the standard items

@property (nonatomic, readonly) GMenuViewContainer * menuViewContainer;

- (void)setMenuVisible:(BOOL)menuVisible animated:(BOOL)animated;

- (void)setTargetRect:(CGRect)targetRect inView:(UIView *)targetView;

@end

NS_ASSUME_NONNULL_END

NS_ASSUME_NONNULL_BEGIN
@interface GMenuItem : NSObject

- (instancetype)initWithTitle:(NSString *)title target:(id)target action:(SEL)action;
- (instancetype)initWithTitle:(NSString *)title image:(UIImage*)image target:(id)target action:(SEL)action;

@end
NS_ASSUME_NONNULL_END
