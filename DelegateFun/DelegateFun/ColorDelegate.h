//
//  ColorDelegate.h
//  DelegateFun
//
//  Created by Matthew Kish on 7/15/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ColorDelegate <NSObject>

- (void) ChangeColor: (UIColor *)color;
- (void) ChangeText: (NSString *)text;

@end
