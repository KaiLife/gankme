//
//  AppDelegate.h
//  gankme
//
//  Created by 童欣凯 on 2018/3/20.
//  Copyright © 2018年 com.tan66. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainTabBarController.h"


/**
 这里面只做调用，具体实现放到 AppDelegate+AppService 或者Manager里面，防止代码过多不清晰
 */
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MainTabBarController *mainTabBar;

@end

