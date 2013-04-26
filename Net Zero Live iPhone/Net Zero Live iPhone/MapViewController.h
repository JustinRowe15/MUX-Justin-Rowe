//
//  MapViewController.h
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/25/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MapViewDelegate.h"

@interface MapViewController : UIViewController <MKMapViewDelegate, MapViewDelegate>

@property (nonatomic, strong) Solutions * solution;

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
