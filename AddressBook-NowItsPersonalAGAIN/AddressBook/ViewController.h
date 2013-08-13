//
//  ViewController.h
//  AddressBook
//
//  Created by Matthew Kish on 7/22/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SavePerson.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, SavePerson, NSFetchedResultsControllerDelegate>

@end
