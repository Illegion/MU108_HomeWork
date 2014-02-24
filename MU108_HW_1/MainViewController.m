//
//  MainViewController.m
//  MU108_HW_1
//
//  Created by Admin on 23.02.14.
//  Copyright (c) 2014 AmbientLab. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    NSLog(@"Test");
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)eventButton:(id)sender {
    countVar++;
    self.helloLabel.text = [NSString stringWithFormat:@"HELLO WORLD!"];
    self.countLabel.text = [NSString stringWithFormat:@"Колличество нажатий: %d",countVar];
}
@end
