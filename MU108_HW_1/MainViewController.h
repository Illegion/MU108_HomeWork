//
//  MainViewController.h
//  MU108_HW_1
//
//  Created by Admin on 23.02.14.
//  Copyright (c) 2014 AmbientLab. All rights reserved.
//

#import <UIKit/UIKit.h>
int countVar = 0;

@interface MainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *helloLabel;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UIButton *eventButton;

@end
