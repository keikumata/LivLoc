//
//  CalcViewController.h
//  LivLoc
//
//  Created by Kei Yoshikoshi on 11/15/14.
//  Copyright (c) 2014 LivLoc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalcViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *beerLabel;
@property (weak, nonatomic) IBOutlet UILabel *wineLabel;
@property (weak, nonatomic) IBOutlet UIStepper *beerStepper;
- (IBAction)addBeer:(UIStepper *)sender;

@property (weak, nonatomic) IBOutlet UILabel *shotLabel;
@property (weak, nonatomic) IBOutlet UIStepper *wineStepper;
- (IBAction)addWine:(UIStepper *)sender;
@property (weak, nonatomic) IBOutlet UIStepper *shotStepper;
- (IBAction)addShot:(UIStepper *)sender;
@property (weak, nonatomic) IBOutlet UILabel *hoursLabel;

@property (weak, nonatomic) IBOutlet UISlider *hoursSlider;
- (IBAction)setHours:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UILabel *BACoutput;
- (IBAction)calcBAC:(UISlider *)sender;
@property float genderconstant;
@property double pounds;

@end
