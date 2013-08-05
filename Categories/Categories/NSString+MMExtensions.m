//
//  NSString+MMExtensions.m
//  Categories
//
//  Created by Matthew Kish on 7/31/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import "NSString+MMExtensions.h"

@implementation NSString (MMExtensions)


- (NSString*) mmReverseString {
    NSString *returnString = @"";
    
    for (int index = 0; index < self.length; index++) {
        returnString = [NSString stringWithFormat:@"%c%@", [self characterAtIndex:index],returnString];
    }
    
    return returnString;
}

@end
