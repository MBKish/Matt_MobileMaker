//
//  MagicEightBall.m
//  MagicEightBall
//
//  Created by Matthew Kish on 7/9/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "MagicEightBall.h"

@implementation MagicEightBall
-(NSString*) getRandomString:(NSString *)randString;{
    
    randString = @"lemons";
    int x = arc4random() % 3;
    
    if (x == 1) {
        randString = @"answer 1";
    }else if (x == 2){
        randString = @"answer 2";
    }else{
        randString = @"answer 3";
    }

    return randString;
}

@end
