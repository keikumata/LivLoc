//
//  BacViewController.m
//  LivLoc
//
//  Created by Kei Yoshikoshi on 11/15/14.
//  Copyright (c) 2014 LivLoc. All rights reserved.
//

#import "BacViewController.h"

@interface BacViewController ()

@end

@implementation BacViewController
@synthesize gender, showWeight;
float genderconstant=0;
int pounds=0;

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



- (IBAction)setWeight:(UISlider *)sender{
    self.showWeight.text=[NSString stringWithFormat:@"%d", (int)sender.value];
    pounds=(int)sender.value;

}
- (IBAction)indexChanged:(UISegmentedControl *)sender {
    switch (self.gender.selectedSegmentIndex) {
        case 0:
            //self.showGender.text=@"Woo";
            genderconstant=.58;
            break;
        case 1:
           // self.showGender.text=@"Wop";
            genderconstant=.49;
            break;
        case 2:
           // self.showGender.text=@"Wlp";
            genderconstant=.54;
            break;
        default:
            break;
    }
}

@end
