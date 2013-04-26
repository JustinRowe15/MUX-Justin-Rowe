//
//  MapViewController.m
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/25/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "MapViewController.h"
#import "Solutions.h"
#import "DetailedSolutionsViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self refreshUI];
    // Do any additional setup after loading the view from its nib.
    
    UIBarButtonItem * backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:self action:@selector(openSolution)];
    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObject:backButton];
    
}

-(void)openSolution
{
    DetailedSolutionsViewController * openSolutionsView = [[DetailedSolutionsViewController alloc] initWithNibName:@"DetailedSolutionsViewController" bundle:nil];
    [self presentViewController:openSolutionsView animated:TRUE completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)selectedMap:(Solutions *)newMap;
{
    if (_solution != newMap)
    {
        _solution = newMap;
    
        [self refreshUI];
    }
}

-(void)refreshUI;
{
    self.mapView.delegate = self;
    CLLocationCoordinate2D equipmentCoordinates = CLLocationCoordinate2DMake(_solution.equipmentLatitude, _solution.equipmentLongitude);
    self.mapView.region = MKCoordinateRegionMakeWithDistance(equipmentCoordinates, 9000, 9000);
    self.mapView.zoomEnabled = YES;
    self.mapView.scrollEnabled = YES;
    self.mapView.mapType = MKMapTypeHybrid;
}

@end
