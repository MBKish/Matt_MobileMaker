//
//  EditViewController.h
//  AddressBook
//
//  Created by Matthew Kish on 7/22/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SavePerson.h"

@interface EditViewController : UIViewController

@property (strong, nonatomic) NSString *firstNameStringEdit;
@property (strong, nonatomic) NSString *lastNameStringEdit;
@property (strong, nonatomic) NSString *emailStringEdit;
@property (strong, nonatomic) NSString *phoneStringEdit;

@property (strong, nonatomic) id <SavePerson> delegate;

@end
