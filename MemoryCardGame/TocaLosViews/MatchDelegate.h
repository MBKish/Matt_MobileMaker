//
//  MatchDelegate.h
//  TocaLosViews
//
//  Created by Matthew Kish on 7/18/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MyView;

@protocol MatchDelegate <NSObject>

- (void) didChooseView: (MyView *)myview;

@end
