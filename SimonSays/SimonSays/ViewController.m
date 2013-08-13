//
//  ViewController.m
//  SimonSays
//
//  Created by Matthew Kish on 8/1/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *arrayOfTags;
}
- (IBAction)flash:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    arrayOfTags = @[@"1",@"2", @"3", @"4",@"5",@"6"];
    
}

-(void)animateAllViewsFromTagArray:(NSArray *)tagArray atIndex:(NSUInteger)tagIndex {
        
    UIView *selectedView = nil;
    
    NSString *tagString = [tagArray objectAtIndex:tagIndex];
    
    for (UIView *subview in self.view.subviews) {
        if (subview.tag == [tagString intValue]) {
            selectedView = subview;
            break;
        }
    }
    
    UIColor *holdColor = selectedView.backgroundColor;
    [UIView animateWithDuration:0.2 animations:^{
        selectedView.backgroundColor = [UIColor whiteColor];
        
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.2 animations:^{
            selectedView.backgroundColor = holdColor;
            
        } completion:^(BOOL finished) {
            if ([tagString isEqual:[tagArray lastObject]]) {
                return;
            }
            else {
                [self animateAllViewsFromTagArray:tagArray atIndex:tagIndex+1];
            }
        }];
        
    }];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)flash:(id)sender {
    [self animateAllViewsFromTagArray:arrayOfTags atIndex:0];
}
@end

//Store each tag of the tapped ColorPanelView in an array, then compare that array to the arrayOfTags