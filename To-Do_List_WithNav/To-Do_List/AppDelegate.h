//
//  AppDelegate.h
//  To-Do_List
//
//  Created by Matthew Kish on 7/16/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    UINavigationController *navigationController;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@end
