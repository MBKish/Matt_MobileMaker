//
//  MySingleton.h
//  Singleton
//
//  Created by Matthew Kish on 8/8/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MySingleton : NSObject

+ (MySingleton *)sharedInstance;
- (void) describe;

@end
