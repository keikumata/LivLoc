//
//  BacViewController.h
//  LivLoc
//
//  Created by Kei Yoshikoshi on 11/15/14.
//  Copyright (c) 2014 LivLoc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BacViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *gender;
- (IBAction)indexChanged:(UISegmentedControl *)sender;



- (IBAction)setWeight:(UISlider *)sender;

@property (weak, nonatomic) IBOutlet UISlider *weight;

@property (weak, nonatomic) IBOutlet UILabel *showWeight;

@property (readwrite, nonatomic) double genderconstant;
@property (readwrite, nonatomic) double pounds;
//
//- (IBAction)setControlSettings:(id)sender;


@end
