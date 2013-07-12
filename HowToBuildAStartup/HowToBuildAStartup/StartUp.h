//
//  StartUp.h
//  HowToBuildAStartup
//
//  Created by alexchoi1 on 7/11/13.
//  Copyright (c) 2013 Good Time Games. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Manager.h"


@interface StartUp : NSObject
///boss, coder, projectManager, and designer
@property (strong, nonatomic) Manager * boss;
@property (strong, nonatomic) Employee * coder;
@property (strong, nonatomic) Employee * projectManager;
@property (strong, nonatomic) Employee * designer;
@end
