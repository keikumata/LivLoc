//
//  ViewController.h
//  LivLoc
//
//  Created by Kei Yoshikoshi on 11/15/14.
//  Copyright (c) 2014 LivLoc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIKit/UIKit.h"
#import "MapKit/MapKit.h"
#import <MapKit/MKAnnotation.h>
#import <CoreLocation/CoreLocation.h>

#define IS_OS_8_OR_LATER ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

//@property (retain,nonatomic)  IBOutlet MKMapView  *mapView;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (retain, nonatomic) CLLocationManager *locationManager;

@end

