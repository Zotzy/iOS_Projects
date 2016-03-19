//
//  ViewController.m
//  TapCounter
//
//  Created by Jeffrey Zotz on 3/18/16.
//  Copyright © 2016 Jeffrey Zotz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
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
@end
