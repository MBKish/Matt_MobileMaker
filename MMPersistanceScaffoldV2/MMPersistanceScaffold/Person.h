//
//  Person.h
//  MMPersistanceScaffold
//
//  Created by Matthew Kish on 8/6/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Person : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * superDescription;
@property (nonatomic, retain) NSString * image;

@end
