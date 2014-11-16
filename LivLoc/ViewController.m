//
//  ViewController.m
//  LivLoc
//
//  Created by Kei Yoshikoshi on 11/15/14.
//  Copyright (c) 2014 LivLoc. All rights reserved.
//

#import "ViewController.h"

@import CoreLocation;

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad]; //(original)
    // do any additional setup after loading the view.
//    
    
//    self.mapView = [[MKMapView alloc] initWithFrame:CGRectMake(0,0,self.view.bounds.size.width,self.view.bounds.size.height)]; //extra
    [self.mapView setShowsUserLocation:YES];
//    [self.view addSubView:self.mapView];
     self.mapView.delegate = self;
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    if ([self.locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [self.locationManager requestWhenInUseAuthorization];
    }
    [self.locationManager startUpdatingLocation];

    
    
#ifdef __IPHONE_8_0
    //if(IS_OS_8_OR_LATER) {
        
       // [self.locationManager requestWhenInUseAuthorization];
//        [self.locationManager requestAlwaysAuthorization];
    //}
#endif
    //[self.locationManager startUpdatingLocation];
    
    //self.mapView.showsUserLocation = YES;
    //[self.mapView setMapType:MKMapTypeStandard];
   // [self.mapView setZoomEnabled:YES];
   // [self.mapView setScrollEnabled:YES];
    
   
//    [self.mapView.delegate self]; // original
//    [self.mapView setShowsUserLocation:YES]; //original
}
//- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
//{
//    NSLog(@"%@", [locations lastObject]);
//}

//-(void)viewDidAppear:(BOOL)animated {
//    [super viewDidAppear:YES];
//    
//    self.locationManager.distanceFilter = kCLDistanceFilterNone;
//    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
//    [self.locationManager startUpdatingLocation];
//    NSLog(@"%@", [self deviceLocation]);
//    
//    //View Area
//    MKCoordinateRegion region = { { 0.0, 0.0 }, { 0.0, 0.0 } };
//    region.center.latitude = self.locationManager.location.coordinate.latitude;
//    region.center.longitude = self.locationManager.location.coordinate.longitude;
//    region.span.longitudeDelta = 0.005;
//    region.span.latitudeDelta = 0.005;
////    [self.mapView setRegion:region animated:YES];
//    [self.mapView setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
//    
//}


//- (void) mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation { // ORIGINAL
//    if (isTracking) {
//        pendingRegionChange = YES;
//        [self.mapView setCenterCoordinate: userLocation.location.coordinate animated:YES];
//    }
    //CLLocationCoordinate2D loc = [userLocation coordinate];
    //MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 500, 500);
    //[self.mapView setRegion: region animated:YES];
    
 //   MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800); // original
//[self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES]; //original
//}


- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
    {
//        [self.mapView setRegion:MKCoordinateRegionMake(userLocation.coordinate,MKCoordinateSpanMake(0.1f,0.1f)) animated:YES];
        
    [_mapView setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
    }




//        MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800);
//        [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
        
        
//        CLLocationCoordinate2D loc = [userLocation coordinate];
//        MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 500, 500);
//        [self.mapView setRegion: region animated:YES];
        
        
//- (NSString *)deviceLocation {
//        return [NSString stringWithFormat:@"latitude: %f longitude: %f", self.locationManager.location.coordinate.latitude, self.locationManager.location.coordinate.longitude];
//    }
//- (NSString *)deviceLat {
//        return [NSString stringWithFormat:@"%f", self.locationManager.location.coordinate.latitude];
//    }
//- (NSString *)deviceLon {
//        return [NSString stringWithFormat:@"%f", self.locationManager.location.coordinate.longitude];
//    }
//- (NSString *)deviceAlt {
//        return [NSString stringWithFormat:@"%f", self.locationManager.location.altitude];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
