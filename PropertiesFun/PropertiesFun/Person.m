//
//  Person.m
//  PropertiesFun
//
//  Created by Matthew Kish on 7/11/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize name;

-(void) setName:(NSString *)_name{
    name = [NSString stringWithFormat: @"%@!", _name];
}

@end
