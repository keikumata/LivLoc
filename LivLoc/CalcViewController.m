//
//  CalcViewController.m
//  LivLoc
//
//  Created by Kei Yoshikoshi on 11/15/14.
//  Copyright (c) 2014 LivLoc. All rights reserved.
//

#import "CalcViewController.h"
//#import "BacViewController.h"
#import "ShiaViewController.h"

@interface CalcViewController ()


@end

double beers;
double wines;
double shots;
double hours;

@implementation CalcViewController
@synthesize beerLabel, wineLabel, shotLabel, hoursLabel, BACoutput;
// BAC
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
    int hoursint=0;
    hoursint=(int)sender.value;
    hours=(double)hoursint/2;
    self.hoursLabel.text=[NSString stringWithFormat:@"%0.1f hours", hours];
    
}

- (IBAction)calculate:(UIButton *)sender {
    double waterinbod;
    double gramsAlc;
    gramsAlc=(beers+wines+shots)*0.6*23.36;
    waterinbod=self.pounds/2.2046*self.genderconstant*1000;
    double BAC;
    BAC=((gramsAlc/waterinbod*.806*100)-(0.017*hours));
    if (BAC<0) {
        BAC=0;
    }
    if (self.genderconstant==0 || BAC>1 || self.pounds==0){
        self.BACoutput.text=[NSString stringWithFormat:@"BAC =  Error"];

    }
    else if (BAC>0.25&&BAC<=1) {
        [self performSegueWithIdentifier:@"ShiaSurprise" sender:self];
    }
    else {
    self.BACoutput.text=[NSString stringWithFormat:@"BAC =  %0.03f", BAC];
    }
}


//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    if([[segue identifier] isEqualToString:@"ShiaSurprise"])
//    {
//        ShiaViewController* destination = [segue destinationViewController];
//        destination.BAC = self.BAC;
//    }
//}
@end
