//
//  ViewController.m
//  TableFun
//
//  Created by Matthew Kish on 7/16/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    __weak IBOutlet UITextField *myTextField;
    __weak IBOutlet UILabel *myLabel;
    NSMutableArray * array;

    __weak IBOutlet UITableView *myTableView;
}
- (IBAction)changeLabel:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //array = [[NSArray alloc] initWithObjects:@"hi", @"there",@"don", nil];
    //array = [NSarray arrayWithObjects:...
    //array = @["..."];
    array = [NSMutableArray arrayWithCapacity:10];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeLabel:(id)sender {
    myLabel.text = myTextField.text;
    [array addObject: myTextField.text];
    //NSLog(@" %@ ", array);
    for (int i = 0; i<[array count]; i++) {
        NSLog(@" %i: %@", i, [array objectAtIndex:i]);
    }
    for (NSString * labelString in array){
        NSLog(@" labelString = %@", labelString);
    }
}
@end
