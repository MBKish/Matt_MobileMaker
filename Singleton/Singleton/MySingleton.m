//
//  MySingleton.m
//  Singleton
//
//  Created by Matthew Kish on 8/8/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import "MySingleton.h"

@implementation MySingleton

static MySingleton * sMySingleton;

+ (MySingleton *)sharedInstance{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sMySingleton = [[MySingleton alloc] init];
    });
    
    return sMySingleton;
}

- (id) init{
    self = [super init];
    
    if (self) {
        NSLog(@"Instantiating MySingleton %@", self);
    }
    return self;
}

- (void) describe{
    NSLog(@"MySingleton %@", self);
}

@end
