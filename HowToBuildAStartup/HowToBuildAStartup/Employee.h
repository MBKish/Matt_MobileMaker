//
//  Employee.h
//  HowToBuildAStartup
//
//  Created by alexchoi1 on 7/11/13.
//  Copyright (c) 2013 Good Time Games. All rights reserved.
//

#import "Person.h"



/*
 1. Implement a method on the Person class called “copy” that takes in a Person* object and should return a new instance of a Person with the same properties as the person passed into the method
 3. Add a method called initWithPerson: method to your Person object
 4. In the ViewController.m class file, use both the copy: and initWithPerson methods to instantiate new Person objects
 
 
 */

@interface Employee : Person

@property (strong, nonatomic) NSString * type;

@end
