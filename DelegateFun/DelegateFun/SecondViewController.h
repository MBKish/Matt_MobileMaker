//
//  SecondViewController.h
//  DelegateFun
//
//  Created by Matthew Kish on 7/15/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorDelegate.h"

@interface SecondViewController : UIViewController

@property (strong, nonatomic) id <ColorDelegate> delegate;
@end
