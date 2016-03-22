//
//  ViewController.m
//  TapCounter
//
//  Created by Jeffrey Zotz on 3/18/16.
//  Copyright © 2016 Jeffrey Zotz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (void)handleLongPressGestures:(UILongPressGestureRecognizer *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.lpgr = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(handleLongPressGestures:)];
    self.lpgr.minimumPressDuration = 1.0f;
    self.lpgr.allowableMovement = 100.0f;
    
    [self.view addGestureRecognizer:self.lpgr];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)reset:(id)sender {
    _countLabel.text = @"0";
}

- (IBAction)tap:(id)sender {
    NSInteger val = [_countLabel.text intValue];
    val++;
    _countLabel.text = [@(val) stringValue];
}


- (void)handleLongPressGestures:(UILongPressGestureRecognizer *)sender
{
    if ([sender isEqual:self.lpgr]) {
        if (sender.state == UIGestureRecognizerStateBegan)
        {
            //UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Gestures" message:@"Long Gesture Detected" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            //[alertView show];
            // add code to increment count here
            NSLog(@"long press begin");
            NSInteger val = [_countLabel.text intValue];
            val++;
            _countLabel.text = [@(val) stringValue];
        }
        if (sender.state == UIGestureRecognizerStateRecognized)
        {
            NSLog(@"recognized long press");
            NSInteger val = [_countLabel.text intValue];
            val++;
            _countLabel.text = [@(val) stringValue];
        }
    }
}



@end
