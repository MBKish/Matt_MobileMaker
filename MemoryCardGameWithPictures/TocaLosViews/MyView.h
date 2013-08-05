//
//  MyView.h
//  TocaLosViews
//
//  Created by Matthew Kish on 7/18/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MatchDelegate.h"

@interface MyView : UIView

@property (strong, nonatomic) id <MatchDelegate> delegate;

@end
