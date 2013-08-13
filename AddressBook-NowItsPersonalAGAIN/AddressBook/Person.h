//
//  Person.h
//  AddressBook-NowItsPersonal
//
//  Created by Matthew Kish on 8/6/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Person : NSManagedObject

@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;
@property (nonatomic, retain) NSString * emailAddress;
@property (nonatomic, retain) NSString * phoneNumber;

@end
