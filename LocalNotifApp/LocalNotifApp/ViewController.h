//
//  ViewController.h
//  LocalNotifApp
//
//  Created by mobiledev on 3/15/16.
//  Copyright (c) 2016 mobiledev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)Save:(id)sender;
- (IBAction)Cancel:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *itemText;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;


@end
