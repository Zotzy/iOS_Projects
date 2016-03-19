//
//  ViewController.h
//  TapCounter
//
//  Created by Jeffrey Zotz on 3/18/16.
//  Copyright © 2016 Jeffrey Zotz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic) IBOutlet UILabel *countLabel;
- (IBAction)reset:(id)sender;
- (IBAction)tap:(id)sender;



@end

