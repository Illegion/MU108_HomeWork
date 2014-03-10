//
//  RouteJAcontroller.m
//  MU108_HW_5
//
//  Created by Admin on 09.03.14.
//  Copyright (c) 2014 AmbientLab. All rights reserved.
//

#import "RouteJAcontroller.h"

@interface RouteJAcontroller ()

@end

@implementation RouteJAcontroller
-(void)awakeFromNib{
    [self setLeftPanel:[self.storyboard instantiateViewControllerWithIdentifier:@"leftViewController"]];
    [self setCenterPanel:[self.storyboard instantiateViewControllerWithIdentifier:@"centerViewController"]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
