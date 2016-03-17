//
//  ViewController.m
//  PushNotifTimer
//
//  Created by Jeff Zotz on 3/11/16.
//  Copyright (c) 2016 jeffzotz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    
    BOOL isTimerRunning;
    
    BOOL isPaused;
    
    int hours;
    
    int minutes;
    
    int seconds;
    
    int secondsCount;
    
    NSTimer *timer;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    isTimerRunning = NO;
    isPaused = NO;
    _pauseButton.enabled = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)StartStopButton:(id)sender {
    NSTimeInterval duration = _datePicker.countDownDuration;
    seconds = 0;
    hours = (int)(duration/3600.0f);
    minutes = (int)((duration - (hours * 3600))/60);
    secondsCount = (int)((hours * 3600) + (minutes * 60));
    _timeLabel.text = [NSString stringWithFormat:@"%02i:%02i:%02i", hours, minutes, seconds];
    
    
    
    if(isTimerRunning == YES) {
        _timeLabel.alpha = 0;
        _datePicker.alpha = 1;
        [_startStopButton setTitle:@"Start" forState:UIControlStateNormal];
        [_pauseButton setTitle:@"Pause" forState:UIControlStateNormal];
        _pauseButton.enabled = NO;
        [timer invalidate];
        timer = nil;
    } else {
        // Get the current date
        NSDate *pickerDate = [NSDate dateWithTimeIntervalSinceNow: (float)duration];
        
        // Schedule the notification
        UILocalNotification* localNotification = [[UILocalNotification alloc] init];
        localNotification.fireDate = pickerDate;
        localNotification.alertBody = @"Time is up!";
        localNotification.alertAction = @"Show me the moneyyyy";
        localNotification.timeZone = [NSTimeZone defaultTimeZone];
        
        [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
        _timeLabel.alpha = 1;
        _datePicker.alpha = 0;
        [_startStopButton setTitle:@"Stop" forState:UIControlStateNormal];
        _pauseButton.enabled = YES;
        if (timer == nil) {
            timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                     target:self
                                                   selector:@selector(updateTimer)
                                                   userInfo:nil
                                                    repeats:YES];
        }
    }
    isTimerRunning = !isTimerRunning;

}

-(void) updateTimer {
    secondsCount--;
    hours = secondsCount/3600;
    minutes = (secondsCount - (hours * 3600))/60;
    seconds = secondsCount - (hours * 3600) - (minutes * 60);
    
    _timeLabel.text = [NSString stringWithFormat:@"%02i:%02i:%02i", hours, minutes, seconds];
    if (secondsCount <= 0) {
        [timer invalidate];
        timer = nil;
        _timeLabel.alpha = 0;
        [_startStopButton setTitle:@"Start" forState:UIControlStateNormal];
        _pauseButton.enabled = NO;
    }
}

- (IBAction)PauseTimer:(id)sender {
    if (isPaused == YES) {
        [timer invalidate];
        timer = nil;
        [_pauseButton setTitle:@"Resume" forState:UIControlStateNormal];
    } else {
        if(timer) {
            [timer invalidate];
            timer = nil;
        }
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(updateTimer)
                                               userInfo:nil
                                                repeats:YES];
        [_pauseButton setTitle:@"Pause" forState:UIControlStateNormal];
    }
    isPaused = !isPaused;
}
@end















