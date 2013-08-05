//
//  EditViewController.m
//  AddressBook
//
//  Created by Matthew Kish on 7/22/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController (){
    
    __weak IBOutlet UITextField *firstNameTextField;
    __weak IBOutlet UITextField *lastNameTextField;
    __weak IBOutlet UITextField *emailTextField;
    __weak IBOutlet UITextField *phoneTextField;
}
- (IBAction)confirmButtonAction:(id)sender;

@end

@implementation EditViewController

@synthesize delegate;

@synthesize firstNameStringEdit;
@synthesize lastNameStringEdit;
@synthesize emailStringEdit;
@synthesize phoneStringEdit;

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
    firstNameTextField.text = firstNameStringEdit;
    lastNameTextField.text = lastNameStringEdit;
    emailTextField.text = emailStringEdit;
    phoneTextField.text = phoneStringEdit;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)confirmButtonAction:(id)sender {
    
    [delegate UpdateFirstName:firstNameTextField.text andLastName:lastNameTextField.text andEmail:emailTextField.text andPhone:phoneTextField.text];
    NSLog(@"Sad");
    [self.navigationController popViewControllerAnimated:YES];
}

@end
