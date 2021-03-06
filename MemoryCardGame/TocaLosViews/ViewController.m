//
//  ViewController.m
//  TocaLosViews
//
//  Created by Matthew Kish on 7/18/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"

@interface ViewController (){
    BOOL firstPick;
    int storeFirstPick;
    MyView * storedFirstChoice;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    firstPick = YES;
    for (UIView *subview in self.view.subviews){
        if ([subview isKindOfClass:[MyView class]]) {
            MyView * myView = (MyView*)subview;
            myView.delegate = self;
        }
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) didChooseView: (MyView *)myview{
    if (myview != storedFirstChoice){
        if (firstPick) {
            storeFirstPick = myview.tag;
            storedFirstChoice = myview;
            firstPick = NO;
        }else{
            if (storeFirstPick == myview.tag) {
                usleep(500000); //replace this with a system timer later!
                NSLog(@"Match Made!");
                firstPick = YES;
                //myview.backgroundColor = [UIColor yellowColor];
                //myview.hidden = YES;
                for (UIView *subview in self.view.subviews){
                    if ([subview isKindOfClass:[MyView class]]) {
                        MyView * oldSelection = (MyView*)subview;
                        if(oldSelection.tag == storeFirstPick){
                            //oldSelection.backgroundColor = [UIColor yellowColor];
                            //oldSelection.hidden = YES;
                        }
                    }
                }
                
            }else{
                usleep(1000000); //replace this with a system timer later!
                NSLog(@"Did Not Match!");
                firstPick = YES;
                [MyView transitionWithView:storedFirstChoice duration:.5 options:UIViewAnimationOptionTransitionFlipFromLeft animations:nil completion:nil];
                myview.backgroundColor = [UIColor whiteColor];
                for (UIView *subview in self.view.subviews){
                    if ([subview isKindOfClass:[MyView class]]) {
                        MyView * oldSelection = (MyView*)subview;
                        if(oldSelection.tag == storeFirstPick){
                            [MyView transitionWithView:myview duration:.5 options:UIViewAnimationOptionTransitionFlipFromLeft animations:nil completion:nil];
                            oldSelection.backgroundColor = [UIColor whiteColor];
                            storedFirstChoice = nil;
                        }
                    }
                }
            }
        }
        NSLog(@"%i", storeFirstPick);
    }
}

@end