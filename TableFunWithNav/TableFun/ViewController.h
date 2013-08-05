//
//  ViewController.h
//  TableFun
//
//  Created by Matthew Kish on 7/16/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditViewController.h"
#import "EditDelegate.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, EditDelegate>

@end
