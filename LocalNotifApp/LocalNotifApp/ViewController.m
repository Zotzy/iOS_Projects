//
//  ViewController.m
//  LocalNotifApp
//
//  Created by mobiledev on 3/15/16.
//  Copyright (c) 2016 mobiledev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)save:(id)sender {
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.itemText resignFirstResponder];
    return NO;
}

- (IBAction)Cancel:(id)sender {
}

- (IBAction)Save:(id)sender {
}

@end
