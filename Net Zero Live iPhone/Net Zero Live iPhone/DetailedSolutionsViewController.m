//
//  DetailedSolutionsViewController.m
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/24/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "DetailedSolutionsViewController.h"

@interface DetailedSolutionsViewController ()

@end

@implementation DetailedSolutionsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated
{
    [self populateViewWithSolutions:self.solution];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    UIBarButtonItem * editSolutionButton = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStyleBordered target:self action:@selector(editSolutionAlert)];
    
    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObject:editSolutionButton];
}

-(void)editsolutionAlert
{
    UIAlertView * editAlert = [[UIAlertView alloc] initWithTitle:@"Edit Solution" message:@"This will pop up a page to edit a solution." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [editAlert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)populateViewWithSolutions:(Solutions *)solution
{
    self.solution = solution;
    self.SolutionEntryLabel.text = solution.equipmentName;
    self.LocationEntryLabel.text = solution.equipmentLocation;
    self.QuantityEntryLabel.text = solution.equipmentQuantity;
    self.AdvisorEntryLabel.text = solution.equipmentAdvisor;
    
    [_SolutionLabel setFont:[UIFont fontWithName:@"MicrogrammaDEE-BoldExte" size:17]];
    [_SolutionEntryLabel setFont:[UIFont fontWithName:@"MicrogrammaD-MediExte" size:17]];
    [_LocationLabel setFont:[UIFont fontWithName:@"MicrogrammaDEE-BoldExte" size:17]];
    [_LocationEntryLabel setFont:[UIFont fontWithName:@"MicrogrammaD-MediExte" size:17]];
    [_QuantityLabel setFont:[UIFont fontWithName:@"MicrogrammaDEE-BoldExte" size:17]];
    [_QuantityEntryLabel setFont:[UIFont fontWithName:@"MicrogrammaD-MediExte" size:17]];
    [_AdvisorLabel setFont:[UIFont fontWithName:@"MicrogrammaDEE-BoldExte" size:17]];
    [_AdvisorEntryLabel setFont:[UIFont fontWithName:@"MicrogrammaD-MediExte" size:17]];
    
    self.solutionsMapView.delegate = self;
    CLLocationCoordinate2D equipmentCoordinates = CLLocationCoordinate2DMake(_solution.equipmentLatitude, _solution.equipmentLongitude);
    self.solutionsMapView.region = MKCoordinateRegionMakeWithDistance(equipmentCoordinates, 9000, 9000);
    self.solutionsMapView.zoomEnabled = YES;
    self.solutionsMapView.scrollEnabled = YES;
    self.solutionsMapView.mapType = MKMapTypeHybrid;
}

@end
