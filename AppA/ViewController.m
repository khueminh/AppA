//
//  ViewController.m
//  AppA
//
//  Created by Nguyen Minh Khue on 8/26/15.
//  Copyright (c) 2015 Nguyen Minh Khue. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *OpenAppB;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self.OpenAppB layer] setBorderWidth:1.0f];
    [[self.OpenAppB layer] setBorderColor:[UIColor lightGrayColor].CGColor];
    self.OpenAppB.backgroundColor = [UIColor lightGrayColor];
    self.OpenAppB.titleLabel.textColor = [UIColor blackColor];
    
}
- (IBAction)OpenAppBClick:(id)sender {
    NSString *customURL = @"ApplicationB://";
    
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:customURL]])
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:customURL]];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"URL error"
                                                        message:[NSString stringWithFormat:@"No custom URL defined for %@", customURL]
                                                       delegate:self cancelButtonTitle:@"Ok"
                                              otherButtonTitles:nil];
        [alert show];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
