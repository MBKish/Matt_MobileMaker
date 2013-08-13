//
//  ShowViewController.h
//  AddressBook
//
//  Created by Matthew Kish on 7/22/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditViewController.h"
#import "SavePerson.h"

@interface ShowViewController : UIViewController <SavePerson>

@property (strong, nonatomic) Person *person;

@property BOOL editAdd;

@property (strong, nonatomic) id <SavePerson> delegate;

@end
