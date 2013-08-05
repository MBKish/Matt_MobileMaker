//
//  SecondViewController.m
//  WordBrowser
//
//  Created by Matthew Kish on 7/24/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController (){
    
    __weak IBOutlet UITextView *textBox;
}

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    textBox.text = self.incomingDefinition;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
