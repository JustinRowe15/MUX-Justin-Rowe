//
//  DetailedSolutionsViewController.h
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/24/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Solutions.h"
#import <MapKit/MapKit.h>

@class DetailedSolutionsViewController;

@protocol DetailedSolutionsViewControllerDelegate <NSObject>

-(void)detailedSolutionsViewControllerDidFinish:(DetailedSolutionsViewController *)sender;
@end

@interface DetailedSolutionsViewController : UIViewController <MKMapViewDelegate>

@property (nonatomic, strong) Solutions * solution;

@property (weak, nonatomic) IBOutlet UILabel *SolutionLabel;
@property (weak, nonatomic) IBOutlet UILabel *LocationLabel;
@property (weak, nonatomic) IBOutlet UILabel *QuantityLabel;
@property (weak, nonatomic) IBOutlet UILabel *AdvisorLabel;
@property (weak, nonatomic) IBOutlet UILabel *SolutionEntryLabel;
@property (weak, nonatomic) IBOutlet UILabel *LocationEntryLabel;
@property (weak, nonatomic) IBOutlet UILabel *QuantityEntryLabel;
@property (weak, nonatomic) IBOutlet UILabel *AdvisorEntryLabel;
@property (weak, nonatomic) IBOutlet MKMapView *solutionsMapView;

@property (strong, nonatomic) id<DetailedSolutionsViewControllerDelegate> delegate;

@end
