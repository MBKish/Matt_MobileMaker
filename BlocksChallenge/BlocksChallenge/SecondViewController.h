//
//  SecondViewController.h
//  BlocksChallenge
//
//  Created by Matthew Kish on 7/23/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) NSMutableArray *filteredArray;

@end
