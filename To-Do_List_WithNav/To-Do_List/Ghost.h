//
//  Ghost.h
//  To-Do_List_WithNav
//
//  Created by Matthew Kish on 7/17/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Ghost <NSObject>

- (void) valueDidChange: (NSString *) value;

@end
