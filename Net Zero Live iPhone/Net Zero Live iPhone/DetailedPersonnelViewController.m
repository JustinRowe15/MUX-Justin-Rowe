//
//  DetailedPersonnelViewController.m
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/25/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "DetailedPersonnelViewController.h"

@interface DetailedPersonnelViewController ()

@end

@implementation DetailedPersonnelViewController

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
    [self populateViewWithPersonnel:self.personnel];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UIBarButtonItem * editPersonnelButton = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStyleBordered target:self action:@selector(editPersonnelAlert)];
    
    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObject:editPersonnelButton];

}

-(void)editPersonnelAlert
{
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Edit Personnel" message:@"This will pop up a page to edit a person." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)populateViewWithPersonnel:(Personnel *)personnel
{
    self.personnel = personnel;
    _nameEntryLabel.text = _personnel.personnelName;
    _currentLocationEntryLabel.text = _personnel.personnelCurrentLocation;
    _previousLocationEntryLabel.text = _personnel.personnelPreviousLocation;
    _cellNumberEntryLabel.text = _personnel.personnelCellNumber;
    
    [_nameLabel setFont:[UIFont fontWithName:@"MicrogrammaDEE-BoldExte" size:17]];
    [_nameEntryLabel setFont:[UIFont fontWithName:@"MicrogrammaD-MediExte" size:17]];
    [_locationLabel setFont:[UIFont fontWithName:@"MicrogrammaDEE-BoldExte" size:17]];
    [_currentLocationEntryLabel setFont:[UIFont fontWithName:@"MicrogrammaD-MediExte" size:17]];
    [_previousLocationLabel setFont:[UIFont fontWithName:@"MicrogrammaDEE-BoldExte" size:17]];
    [_previousLocationEntryLabel setFont:[UIFont fontWithName:@"MicrogrammaD-MediExte" size:17]];
    [_cellNumberLabel setFont:[UIFont fontWithName:@"MicrogrammaDEE-BoldExte" size:17]];
    [_cellNumberEntryLabel setFont:[UIFont fontWithName:@"MicrogrammaD-MediExte" size:17]];
    
    self.personnelMapView.delegate = self;
    CLLocationCoordinate2D equipmentCoordinates = CLLocationCoordinate2DMake(_personnel.personnelLatitude, _personnel.personnelLongitude);
    self.personnelMapView.region = MKCoordinateRegionMakeWithDistance(equipmentCoordinates, 9000, 9000);
    self.personnelMapView.zoomEnabled = YES;
    self.personnelMapView.scrollEnabled = YES;
    self.personnelMapView.mapType = MKMapTypeHybrid;
}

@end

