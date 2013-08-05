//
//  EditViewController.h
//  MyFavoriteTableThingsWithNav
//
//  Created by Matthew Kish on 7/17/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditDelegate.h"

@interface EditViewController : UIViewController

@property (strong, nonatomic) NSString * textValue;
@property (strong, nonatomic) id <EditDelegate> delegate;

@end
