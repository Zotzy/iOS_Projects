//
//  ViewController.h
//  PushNotifTimer
//
//  Created by Jeff Zotz on 3/11/16.
//  Copyright (c) 2016 jeffzotz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, retain) IBOutlet UIDatePicker *datePicker;
@property (nonatomic, retain) IBOutlet UIButton *startStopButton;
@property (nonatomic, retain) IBOutlet UIButton *pauseButton;
@property (nonatomic, retain) IBOutlet UILabel *timeLabel;

- (IBAction)StartStopButton:(id)sender;
- (IBAction)PauseTimer:(id)sender;

@end

