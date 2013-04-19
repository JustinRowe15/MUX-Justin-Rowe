//
//  PeopleScreenViewControllerRight.m
//  Interface 
//
//  Generated by Interface 2
//  http://lesscode.co.nz/interface
//

#import "PeopleScreenViewControllerRight.h"
#import "SurveyPopOverViewController.h"
#import "ProfileViewController.h"

#import "GradientView.h"
#import "MKMapView+ZoomLevel.h"

@implementation PeopleScreenViewControllerRight
@synthesize barButton1Popover;


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return UIInterfaceOrientationIsLandscape(toInterfaceOrientation);
}


- (void)viewDidLoad {
  [super viewDidLoad];
  
  // ----------------------------;
  // View Controller Root View;
  // ----------------------------;
  
  UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 703, 748)];
  contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  contentView.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  
  // ----------------------------;
  // UINavigationBar -> navigationBar1;
  // ----------------------------;
  
  UINavigationBar *navigationBar1 = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 703, 44)];
  navigationBar1.delegate = (id<UINavigationBarDelegate>)self;
  UINavigationItem *navigationBar1BackItem = [[[UINavigationItem alloc] initWithTitle:nil] autorelease];
  UINavigationItem *navigationBar1TopItem = [[[UINavigationItem alloc] initWithTitle:nil] autorelease];
  NSArray *navigationBar1Items = [NSArray arrayWithObjects:navigationBar1BackItem, navigationBar1TopItem, nil];
  [navigationBar1 setItems:navigationBar1Items animated:NO];
  [contentView addSubview:navigationBar1];
  navigationBar1.alpha = 1.0;
  navigationBar1.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
  navigationBar1.barStyle = UIBarStyleDefault;
  navigationBar1.tintColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
  navigationBar1.topItem.title = @"Equipment Detail";
  [navigationBar1 setTitleVerticalPositionAdjustment:0.0 forBarMetrics:UIBarMetricsDefault];
  navigationBar1.topItem.hidesBackButton = YES;
  
  // ----------------------------;
  // Navigation Bar Right Button -> barButton1;
  // ----------------------------;
  
  UIBarButtonItem *barButton1 = [[[UIBarButtonItem alloc] initWithTitle:@"Survey" style:UIBarButtonItemStyleBordered target:nil action:nil] autorelease];
  [barButton1 setTintColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1.0]];
  barButton1.target = self;
  barButton1.action = @selector(didTap_barButton1:forEvent:);
  
  navigationBar1.topItem.rightBarButtonItem = barButton1;
  [navigationBar1 release];
  
  
  // ----------------------------;
  // MKMapView -> mapView1;
  // ----------------------------;
  
  MKMapView *mapView1 = [[MKMapView alloc] initWithFrame:CGRectMake(0, 44, 703, 450)];
  [contentView addSubview:mapView1];
  mapView1.alpha = 1.0;
  mapView1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  mapView1.mapType = MKMapTypeHybrid;
  [mapView1 setCenterCoordinate:CLLocationCoordinate2DMake(36.08, -115.14999999999998) zoomLevel:6 animated:NO];
  [mapView1 release];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton1;
  // ----------------------------;
  
  UIButton *roundedRectButton1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton1.frame = CGRectMake(480, 515, 200, 75);
  [contentView addSubview:roundedRectButton1];
  roundedRectButton1.alpha = 1.0;
  roundedRectButton1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton1 setTitle:@"Check-In" forState:UIControlStateNormal];
  [roundedRectButton1 setTitleColor:[UIColor colorWithRed:0.22 green:0.33 blue:0.53 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton1.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:26.0];
  [roundedRectButton1 addTarget:self action:@selector(didTap_roundedRectButton1:forEvent:) forControlEvents:UIControlEventTouchUpInside];
  
  
  // ----------------------------;
  // UILabel -> label1;
  // ----------------------------;
  
  UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(18, 510, 160, 22)];
  [contentView addSubview:label1];
  label1.alpha = 1.0;
  label1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label1.text = @"Name:";
  label1.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label1.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label1.textAlignment = UITextAlignmentRight;
  label1.shadowOffset = CGSizeMake(0, -1);
  label1.font = [UIFont fontWithName:@"Helvetica" size:20.0];
  [label1 release];
  
  
  // ----------------------------;
  // UILabel -> label2;
  // ----------------------------;
  
  UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(18, 550, 160, 22)];
  [contentView addSubview:label2];
  label2.alpha = 1.0;
  label2.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label2.text = @"Current Location:";
  label2.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label2.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label2.textAlignment = UITextAlignmentRight;
  label2.shadowOffset = CGSizeMake(0, -1);
  label2.font = [UIFont fontWithName:@"Helvetica" size:20.0];
  [label2 release];
  
  
  // ----------------------------;
  // UILabel -> label3;
  // ----------------------------;
  
  UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(194, 510, 270, 22)];
  [contentView addSubview:label3];
  label3.alpha = 1.0;
  label3.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label3.text = @"Jed Deplitch";
  label3.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label3.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label3.textAlignment = UITextAlignmentLeft;
  label3.shadowOffset = CGSizeMake(0, -1);
  label3.font = [UIFont fontWithName:@"Helvetica" size:20.0];
  [label3 release];
  
  
  // ----------------------------;
  // UILabel -> label4;
  // ----------------------------;
  
  UILabel *label4 = [[UILabel alloc] initWithFrame:CGRectMake(18, 590, 160, 22)];
  [contentView addSubview:label4];
  label4.alpha = 1.0;
  label4.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label4.text = @"Previous:";
  label4.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label4.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label4.textAlignment = UITextAlignmentRight;
  label4.shadowOffset = CGSizeMake(0, -1);
  label4.font = [UIFont fontWithName:@"Helvetica" size:20.0];
  [label4 release];
  
  
  // ----------------------------;
  // UILabel -> label5;
  // ----------------------------;
  
  UILabel *label5 = [[UILabel alloc] initWithFrame:CGRectMake(194, 550, 270, 22)];
  [contentView addSubview:label5];
  label5.alpha = 1.0;
  label5.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label5.text = @"Las Vegas, Nevada";
  label5.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label5.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label5.textAlignment = UITextAlignmentLeft;
  label5.shadowOffset = CGSizeMake(0, -1);
  label5.font = [UIFont fontWithName:@"Helvetica" size:20.0];
  [label5 release];
  
  
  // ----------------------------;
  // UILabel -> label6;
  // ----------------------------;
  
  UILabel *label6 = [[UILabel alloc] initWithFrame:CGRectMake(194, 590, 270, 22)];
  [contentView addSubview:label6];
  label6.alpha = 1.0;
  label6.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label6.text = @"Fort Belvoir, Virginia";
  label6.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label6.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label6.textAlignment = UITextAlignmentLeft;
  label6.shadowOffset = CGSizeMake(0, -1);
  label6.font = [UIFont fontWithName:@"Helvetica" size:20.0];
  [label6 release];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton2;
  // ----------------------------;
  
  UIButton *roundedRectButton2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton2.frame = CGRectMake(480, 615, 200, 82);
  [contentView addSubview:roundedRectButton2];
  roundedRectButton2.alpha = 1.0;
  roundedRectButton2.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton2 setTitle:@"About Jed" forState:UIControlStateNormal];
  [roundedRectButton2 setTitleColor:[UIColor colorWithRed:0.22 green:0.33 blue:0.53 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton2.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:26.0];
  [roundedRectButton2 addTarget:self action:@selector(didTap_roundedRectButton2:forEvent:) forControlEvents:UIControlEventTouchUpInside];
  
  
  // ----------------------------;
  // UILabel -> label7;
  // ----------------------------;
  
  UILabel *label7 = [[UILabel alloc] initWithFrame:CGRectMake(18, 630, 160, 22)];
  [contentView addSubview:label7];
  label7.alpha = 1.0;
  label7.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label7.text = @"Cell Number:";
  label7.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label7.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label7.textAlignment = UITextAlignmentRight;
  label7.shadowOffset = CGSizeMake(0, -1);
  label7.font = [UIFont fontWithName:@"Helvetica" size:20.0];
  [label7 release];
  
  
  // ----------------------------;
  // UILabel -> label8;
  // ----------------------------;
  
  UILabel *label8 = [[UILabel alloc] initWithFrame:CGRectMake(194, 630, 270, 22)];
  [contentView addSubview:label8];
  label8.alpha = 1.0;
  label8.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label8.text = @"703-704-1234";
  label8.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label8.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label8.textAlignment = UITextAlignmentLeft;
  label8.shadowOffset = CGSizeMake(0, -1);
  label8.font = [UIFont fontWithName:@"Helvetica" size:20.0];
  [label8 release];
  
  
  contentView.frame = self.view.bounds;
  [self.view addSubview:contentView];
  [contentView release];
}

- (void)viewDidUnload {
  self.barButton1Popover = nil;
  [super viewDidUnload];
}

- (void)dealloc {
  self.barButton1Popover = nil;
  [super dealloc];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackOpaque animated:animated];
}


// ----------------
// Navigation Bar
// ----------------

- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item {
  return NO;
}


// ----------------
// Action
// ----------------

- (void)didTap_barButton1:(id)sender forEvent:(UIEvent *)event {
  SurveyPopOverViewController *controller = [[SurveyPopOverViewController alloc] init];
  UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:controller];
  [navigationController setNavigationBarHidden:YES animated:NO];
  UIView *senderView = [[event.allTouches anyObject] view];
  CGRect senderFrame = [senderView convertRect:senderView.frame toView:self.view];
  self.barButton1Popover = [[[UIPopoverController alloc] initWithContentViewController:navigationController] autorelease];
  [self.barButton1Popover presentPopoverFromRect:senderFrame inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
  [navigationController release];
  [controller release];
}
- (void)didTap_roundedRectButton1:(id)sender forEvent:(UIEvent *)event {
  UIAlertView *alertView = [[UIAlertView alloc] init];
  alertView.title = @"Check-In Confirmed";
  alertView.message = @"";
  [alertView addButtonWithTitle:@"Close"];
  [alertView show];
  [alertView release];
}
- (void)didTap_roundedRectButton2:(id)sender forEvent:(UIEvent *)event {
  ProfileViewController *controller = [[ProfileViewController alloc] init];
  UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:controller];
  [navigationController setNavigationBarHidden:YES animated:NO];
  navigationController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
  navigationController.modalPresentationStyle = UIModalPresentationFormSheet;
  [self presentModalViewController:navigationController animated:YES];
  [navigationController release];
  [controller release];
}




@end