//
//  ShowViewController.h
//  AddressBook
//
//  Created by Matthew Kish on 7/22/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SavePerson.h"

@interface ShowViewController : UIViewController <SavePerson>

@property (strong, nonatomic) NSString *firstNameString;
@property (strong, nonatomic) NSString *lastNameString;
@property (strong, nonatomic) NSString *emailString;
@property (strong, nonatomic) NSString *phoneString;

@end
