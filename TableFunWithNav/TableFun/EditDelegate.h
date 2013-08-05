//
//  EditDelegate.h
//  TableFunWithNav
//
//  Created by Matthew Kish on 7/17/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EditDelegate <NSObject>

- (void) valueDidChange: (NSString *) value;

@end
