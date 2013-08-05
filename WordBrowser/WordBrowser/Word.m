//
//  Word.m
//  WordBrowser
//
//  Created by Matthew Kish on 7/24/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import "Word.h"

@implementation Word

@synthesize name;
@synthesize definition;

- (Word*) initWithName:(NSString*)aName andDefinition:(NSString*)aDefinition{
    
    Word *newWord = [[Word alloc] init];
    newWord.name = aName;
    newWord.definition = aDefinition;
    
    return newWord;
}

@end
