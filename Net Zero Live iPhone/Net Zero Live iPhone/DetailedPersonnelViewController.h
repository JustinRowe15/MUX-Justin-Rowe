//
//  DetailedPersonnelViewController.h
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/25/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Personnel.h"
#import <MapKit/MapKit.h>

@class DetailedPersonnelViewController;

@protocol DetailedPersonnelViewControllerDelegate <NSObject>

-(void)detailedPersonnelViewControllerDidFinish:(DetailedPersonnelViewController *)sender;
@end

@interface DetailedPersonnelViewController : UIViewController <MKMapViewDelegate>

@property (nonatomic, strong) Personnel * personnel;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UILabel *previousLocationLabel;
@property (weak, nonatomic) IBOutlet UILabel *cellNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameEntryLabel;
@property (weak, nonatomic) IBOutlet UILabel *currentLocationEntryLabel;
@property (weak, nonatomic) IBOutlet UILabel *previousLocationEntryLabel;
@property (weak, nonatomic) IBOutlet UILabel *cellNumberEntryLabel;
@property (weak, nonatomic) IBOutlet MKMapView *personnelMapView;

@property (strong, nonatomic) id<DetailedPersonnelViewControllerDelegate> delegate;

@end
