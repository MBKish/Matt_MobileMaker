//
//  ViewController.m
//  MyStupidProject
//
//  Created by Matthew Kish on 7/9/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import "ViewController.h"
#import "MyClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    MyClass * myClass;
    myClass = [[MyClass alloc]init];
    [myClass describeMe: @"Como Estas?" aNumber:5];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
