//
//  GMenuController_internal.h
//  GMenuController
//
//  Created by v on 2019/11/7.
//  Copyright © 2019 GIKI. All rights reserved.
//

#ifndef GMenuController_internal_h
#define GMenuController_internal_h

@interface GMenuController ()

@property (nonatomic, weak) UIView * targetView;
@property (nonatomic, readonly) CGRect menuFrame;

- (void)update;

- (void)reset; /// reset menuViewContrainer configs

@end

@interface GMenuItem ()

@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) UIImage * image;
@property (nonatomic, strong) id target;
@property (nonatomic) SEL action;

@end

#endif /* GMenuController_internal_h */
