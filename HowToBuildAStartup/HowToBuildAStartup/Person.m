//
//  Person.m
//  HowToBuildAStartup
//
//  Created by alexchoi1 on 7/11/13.
//  Copyright (c) 2013 Good Time Games. All rights reserved.
//


/*
 1. Implement a method on the Person class called “copy” that takes in a Person* object and should return a new instance of a Person with the same properties as the person passed into the method
 3. Add a method called initWithPerson: method to your Person object
 4. In the ViewController.m class file, use both the copy: and initWithPerson methods to instantiate new Person objects
 
 
 */


#import "Person.h"

@implementation Person
@synthesize age;


- (Person *) initWithPerson
{
    Person * personOutput = [[Person alloc] init];
    return personOutput;
    
}


- (Person *) copy: (Person *) personInput
{
    
    Person * personOutput = [[Person alloc] init];
    
    personOutput.name = personInput.name;
    personOutput.email = personInput.email;
    
  
    
    return personOutput;
    
}


- (int) getAge
{
    
    
    if (age > 50)
    {return 21;}
    else
    {return age;}
        
        }


@end
