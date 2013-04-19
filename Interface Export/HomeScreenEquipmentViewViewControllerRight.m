//
//  HomeScreenEquipmentViewViewControllerRight.m
//  Interface 
//
//  Generated by Interface 2
//  http://lesscode.co.nz/interface
//

#import "HomeScreenEquipmentViewViewControllerRight.h"
#import "DetailEquipmentScreenViewController.h"

#import "GradientView.h"
#import "MKMapView+ZoomLevel.h"

@implementation HomeScreenEquipmentViewViewControllerRight


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
  navigationBar1.topItem.title = @"Location Detail";
  [navigationBar1 setTitleVerticalPositionAdjustment:0.0 forBarMetrics:UIBarMetricsDefault];
  navigationBar1.topItem.hidesBackButton = YES;
  [navigationBar1 release];
  
  
  // ----------------------------;
  // UILabel -> label1;
  // ----------------------------;
  
  UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 525, 190, 22)];
  [contentView addSubview:label1];
  label1.alpha = 1.0;
  label1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label1.text = @"Equipment Name";
  label1.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label1.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label1.textAlignment = UITextAlignmentLeft;
  label1.shadowOffset = CGSizeMake(0, -1);
  label1.font = [UIFont fontWithName:@"Helvetica" size:20.0];
  [label1 release];
  
  
  // ----------------------------;
  // UILabel -> label2;
  // ----------------------------;
  
  UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(20, 575, 190, 22)];
  [contentView addSubview:label2];
  label2.alpha = 1.0;
  label2.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label2.text = @"Equipment Location";
  label2.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label2.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label2.textAlignment = UITextAlignmentLeft;
  label2.shadowOffset = CGSizeMake(0, -1);
  label2.font = [UIFont fontWithName:@"Helvetica" size:20.0];
  [label2 release];
  
  
  // ----------------------------;
  // UILabel -> label3;
  // ----------------------------;
  
  UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(20, 625, 190, 22)];
  [contentView addSubview:label3];
  label3.alpha = 1.0;
  label3.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label3.text = @"Equipment Quantity";
  label3.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label3.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label3.textAlignment = UITextAlignmentLeft;
  label3.shadowOffset = CGSizeMake(0, -1);
  label3.font = [UIFont fontWithName:@"Helvetica" size:20.0];
  [label3 release];
  
  
  // ----------------------------;
  // UILabel -> label4;
  // ----------------------------;
  
  UILabel *label4 = [[UILabel alloc] initWithFrame:CGRectMake(20, 675, 190, 22)];
  [contentView addSubview:label4];
  label4.alpha = 1.0;
  label4.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label4.text = @"Equipment Advisor";
  label4.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label4.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label4.textAlignment = UITextAlignmentLeft;
  label4.shadowOffset = CGSizeMake(0, -1);
  label4.font = [UIFont fontWithName:@"Helvetica" size:20.0];
  [label4 release];
  
  
  // ----------------------------;
  // UILabel -> label5;
  // ----------------------------;
  
  UILabel *label5 = [[UILabel alloc] initWithFrame:CGRectMake(230, 525, 200, 22)];
  [contentView addSubview:label5];
  label5.alpha = 1.0;
  label5.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label5.text = @"Flexfuel";
  label5.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label5.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label5.textAlignment = UITextAlignmentLeft;
  label5.shadowOffset = CGSizeMake(0, -1);
  label5.font = [UIFont fontWithName:@"Helvetica" size:20.0];
  [label5 release];
  
  
  // ----------------------------;
  // UILabel -> label6;
  // ----------------------------;
  
  UILabel *label6 = [[UILabel alloc] initWithFrame:CGRectMake(230, 575, 200, 22)];
  [contentView addSubview:label6];
  label6.alpha = 1.0;
  label6.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label6.text = @"Bagram, Afghanistan";
  label6.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label6.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label6.textAlignment = UITextAlignmentLeft;
  label6.shadowOffset = CGSizeMake(0, -1);
  label6.font = [UIFont fontWithName:@"Helvetica" size:20.0];
  [label6 release];
  
  
  // ----------------------------;
  // UILabel -> label7;
  // ----------------------------;
  
  UILabel *label7 = [[UILabel alloc] initWithFrame:CGRectMake(230, 675, 200, 22)];
  [contentView addSubview:label7];
  label7.alpha = 1.0;
  label7.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label7.text = @"Joe Amadee";
  label7.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label7.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label7.textAlignment = UITextAlignmentLeft;
  label7.shadowOffset = CGSizeMake(0, -1);
  label7.font = [UIFont fontWithName:@"Helvetica" size:20.0];
  [label7 release];
  
  
  // ----------------------------;
  // UILabel -> label8;
  // ----------------------------;
  
  UILabel *label8 = [[UILabel alloc] initWithFrame:CGRectMake(230, 625, 200, 22)];
  [contentView addSubview:label8];
  label8.alpha = 1.0;
  label8.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label8.text = @"8";
  label8.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label8.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label8.textAlignment = UITextAlignmentLeft;
  label8.shadowOffset = CGSizeMake(0, -1);
  label8.font = [UIFont fontWithName:@"Helvetica" size:20.0];
  [label8 release];
  
  
  // ----------------------------;
  // MKMapView -> mapView1;
  // ----------------------------;
  
  MKMapView *mapView1 = [[MKMapView alloc] initWithFrame:CGRectMake(0, 44, 703, 450)];
  [contentView addSubview:mapView1];
  mapView1.alpha = 1.0;
  mapView1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  mapView1.mapType = MKMapTypeHybrid;
  mapView1.showsUserLocation = YES;
  [mapView1 setCenterCoordinate:CLLocationCoordinate2DMake(34.94000000000001, 69.26000000000002) zoomLevel:6 animated:NO];
  [mapView1 release];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton1;
  // ----------------------------;
  
  UIButton *roundedRectButton1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton1.frame = CGRectMake(469, 525, 200, 170);
  [contentView addSubview:roundedRectButton1];
  roundedRectButton1.alpha = 1.0;
  roundedRectButton1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton1 setTitle:@"Detail View" forState:UIControlStateNormal];
  [roundedRectButton1 setTitleColor:[UIColor colorWithRed:0.22 green:0.33 blue:0.53 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton1.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:20.0];
  [roundedRectButton1 addTarget:self action:@selector(didTap_roundedRectButton1:forEvent:) forControlEvents:UIControlEventTouchUpInside];
  
  
  contentView.frame = self.view.bounds;
  [self.view addSubview:contentView];
  [contentView release];
}

- (void)viewDidUnload {
  [super viewDidUnload];
}

- (void)dealloc {
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

- (void)didTap_roundedRectButton1:(id)sender forEvent:(UIEvent *)event {
  DetailEquipmentScreenViewController *controller = [[DetailEquipmentScreenViewController alloc] init];
  UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:controller];
  [navigationController setNavigationBarHidden:YES animated:NO];
  navigationController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
  navigationController.modalPresentationStyle = UIModalPresentationFormSheet;
  [self presentModalViewController:navigationController animated:YES];
  [navigationController release];
  [controller release];
}




@end