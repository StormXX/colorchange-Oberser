//
//  AppDelegate.h
//  demo-colorChange
//
//  Created by DangGu on 14-10-3.
//  Copyright (c) 2014年 StormXX. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Notification.h"
#import "KVO.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController * tabbar;
@property (strong, nonatomic) NSArray * controllers;


@end

