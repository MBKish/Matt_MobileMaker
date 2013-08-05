//
//  ViewController.m
//  NotificationsCategoriesColors
//
//  Created by Matthew Kish on 7/31/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    __weak IBOutlet UITextField *textField;
}
- (IBAction)go:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)go:(id)sender {
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    [notificationCenter postNotificationName:@"COLOR" object:textField.text];
}
@end
