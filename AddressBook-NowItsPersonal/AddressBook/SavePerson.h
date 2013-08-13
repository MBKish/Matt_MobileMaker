//
//  SavePerson.h
//  AddressBook
//
//  Created by Matthew Kish on 7/23/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@protocol SavePerson <NSObject>

//- (void) UpdateFirstName:(NSString *)fName andLastName:(NSString *)lName andEmail:(NSString *)email andPhone:(NSString *)phone;
- (void) editRecord:(Person *)updatedPerson;

@end
