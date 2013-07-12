//
//  ViewController.m
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

#import "ViewController.h"
#import "StartUp.h"
#import "Manager.h"


@interface ViewController ()

{
    StartUp * faceBook;      
}




@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    faceBook = [[StartUp alloc] init];
    
    faceBook.boss = [[Manager alloc] init];
    faceBook.boss.name = @"Mark Zuckerberg";
    faceBook.boss.email = @"Mark@facebook.com";
    faceBook.boss.type = @"BOSS";
    faceBook.boss.numberOfDirectReports = 3;
    
    NSLog(@"%@, %@, %@, Number of Direct Reports: %i",faceBook.boss.name, faceBook.boss.email, faceBook.boss.type, faceBook.boss.numberOfDirectReports);
    /*
    NSLog(@"%@",faceBook.boss.name);
    NSLog(@"%@",faceBook.boss.email);
    NSLog(@"%@",faceBook.boss.type);
    NSLog(@"%i",faceBook.boss.numberOfDirectReports);
    */
    
    faceBook.projectManager = [[Employee alloc] init];
    faceBook.projectManager.name = @"Michele Schochet";
    faceBook.projectManager.email = @"Michele@facebook.com";
    faceBook.projectManager.type = @"Project Manager";
    
    NSLog(@"%@, %@, %@", faceBook.projectManager.name, faceBook.projectManager.email, faceBook.projectManager.type);

    faceBook.coder = [[Employee alloc] init];
    faceBook.coder.name = @"Mike Schroepfer";
    faceBook.coder.email = @"Mike@facebook.com";
    faceBook.coder.type = @"Coder";
    
    NSLog(@"%@, %@, %@", faceBook.coder.name, faceBook.coder.email, faceBook.coder.type);

    faceBook.designer = [[Employee alloc] init];
    faceBook.designer.name = @"Rasmus Andersson";
    faceBook.designer.email = @"Rasmus@facebook.com";
    faceBook.designer.type = @"Designer";
    
    NSLog(@"%@, %@, %@", faceBook.designer.name, faceBook.designer.email, faceBook.designer.type);
    
    Person *personMadeWithCopy = [faceBook.boss copy:faceBook.boss];
    
    Person *personMadeWithOtherThing = [faceBook.boss initWithPerson];
    personMadeWithOtherThing.name = @"Bob";
    
    NSLog(@"We just copied %@ and initiated %@", personMadeWithCopy.name, personMadeWithOtherThing.name);
    
    
    personMadeWithOtherThing.age = 18;
    NSLog(@"age is %i", personMadeWithOtherThing.age);
    
    personMadeWithCopy.age = 56;
    NSLog(@"age is %i", personMadeWithCopy.age);
    
    
    
    /*person name, email
     employee type
     manager numberOfDirectReports*/
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}










@end
