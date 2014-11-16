//
//  CalcViewController.m
//  LivLoc
//
//  Created by Kei Yoshikoshi on 11/15/14.
//  Copyright (c) 2014 LivLoc. All rights reserved.
//

#import "CalcViewController.h"
#import "BacViewController.h"

@interface CalcViewController ()


@end

double beers;
double wines;
double shots;
double hours;

@implementation CalcViewController
@synthesize beerLabel, wineLabel, shotLabel, hoursLabel, BACoutput;
@synthesize beerStepper, wineStepper, shotStepper, hoursSlider;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */




- (IBAction)addBeer:(UIStepper *)sender {
    self.beerLabel.text=[NSString stringWithFormat:@"%d", (int)sender.value];
    beers=sender.value;
    }
- (IBAction)addWine:(UIStepper *)sender {
    self.wineLabel.text=[NSString stringWithFormat:@"%d", (int)sender.value];
    wines=sender.value;
}
- (IBAction)addShot:(UIStepper *)sender {
    self.shotLabel.text=[NSString stringWithFormat:@"%d", (int)sender.value];
    shots=sender.value;

    
}
- (IBAction)setHours:(UISlider *)sender {
    self.hoursLabel.text=[NSString stringWithFormat:@"%d", (int)sender.value];
    hours=sender.value;
}


- (IBAction)calcBAC:(UISlider *)sender {
    
    double waterinbod;
    double gramsAlc;
    gramsAlc=(beers+wines+shots)*0.6*23.36;
    waterinbod=self.pounds/2.2046*self.genderconstant*1000;
    double BAC;
    BAC=(gramsAlc/waterinbod*.806-0.017*hours)/100;
    self.BACoutput.text=[NSString stringWithFormat:@"BAC: %f", self.pounds];
    
}
@end
