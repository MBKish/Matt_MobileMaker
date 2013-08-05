//
//  ShowViewController.m
//  AddressBook
//
//  Created by Matthew Kish on 7/22/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import "ShowViewController.h"
#import "EditViewController.h"

@interface ShowViewController (){
    IBOutlet UILabel *firstNameLabel;
    IBOutlet UILabel *lastNameLabel;
    IBOutlet UILabel *emailLabel;
    IBOutlet UILabel *phoneLabel;
    EditViewController *editViewController;
}
- (IBAction)editButtonAction:(id)sender;


@end

@implementation ShowViewController

@synthesize firstNameString;
@synthesize lastNameString;
@synthesize emailString;
@synthesize phoneString;

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
    firstNameLabel.text = firstNameString;
    lastNameLabel.text = lastNameString;
    emailLabel.text = emailString;
    phoneLabel.text = phoneString;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)editButtonAction:(id)sender {
    [self performSegueWithIdentifier:@"toEditView" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIBarButtonItem*)sender{
    
    if ([segue.identifier isEqualToString:@"toEditView"]) {
        editViewController = segue.destinationViewController;
        editViewController.firstNameStringEdit = firstNameString;
        editViewController.lastNameStringEdit = lastNameString;
        editViewController.emailStringEdit = emailString;
        editViewController.phoneStringEdit = phoneString;
        editViewController.delegate = self;
    }
}
#pragma mark delegate
- (void) UpdateFirstName:(NSString *)fName andLastName:(NSString *)lName andEmail:(NSString *)email andPhone:(NSString *)phone{
    NSLog(@"happy");
    firstNameLabel.text = fName;
    lastNameLabel.text = lName;
    emailLabel.text = email;
    phoneLabel.text = phone;
}

@end
