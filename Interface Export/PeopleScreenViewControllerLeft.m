//
//  PeopleScreenViewControllerLeft.m
//  Interface 
//
//  Generated by Interface 2
//  http://lesscode.co.nz/interface
//

#import "PeopleScreenViewControllerLeft.h"

#import "GradientView.h"
#import "MKMapView+ZoomLevel.h"

@implementation PeopleScreenViewControllerLeft
@synthesize tableView1Data;


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}


- (void)viewDidLoad {
  [super viewDidLoad];
  
  // ----------------------------;
  // View Controller Root View;
  // ----------------------------;
  
  UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 748)];
  contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  contentView.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  
  // ----------------------------;
  // UITableView -> tableView1;
  // ----------------------------;
  
  UITableView *tableView1 = [[UITableView alloc] initWithFrame:CGRectMake(0, 44, 320, 655) style:UITableViewStylePlain];
  tableView1.tag = 1;
  tableView1.delegate = (id<UITableViewDelegate>)self;
  tableView1.dataSource = (id<UITableViewDataSource>)self;
  self.tableView1Data = [NSMutableArray array];
  [contentView addSubview:tableView1];
  tableView1.alpha = 1.0;
  tableView1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  tableView1.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
  tableView1.separatorColor = [UIColor colorWithRed:0.88 green:0.88 blue:0.88 alpha:1.0];
  tableView1.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  [tableView1 release];
  
  
  // ----------------------------;
  // Table View Section -> tableViewSection1;
  // ----------------------------;
  
  NSMutableDictionary *tableViewSection1Data = [NSMutableDictionary dictionary];
  [tableViewSection1Data setObject:@"Operational Energy Team" forKey:@"headerText"];
  [tableViewSection1Data setObject:@"" forKey:@"footerText"];
  [tableViewSection1Data setObject:[NSMutableArray array] forKey:@"cells"];
  [self.tableView1Data addObject:tableViewSection1Data];
  
  // ----------------------------;
  // Cell -> tableViewCell1;
  // ----------------------------;
  
  NSMutableDictionary *tableViewCell1Data = [NSMutableDictionary dictionary];
  UITableViewCell *tableViewCell1 = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
  tableViewCell1.textLabel.text = @"Joe Amadee";
  tableViewCell1.detailTextLabel.text = @"Subtitle";
  tableViewCell1.accessoryType = UITableViewCellAccessoryNone;
  [tableViewCell1Data setObject:tableViewCell1 forKey:@"cell"];
  [tableViewCell1Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
  [tableViewCell1Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
  [tableViewCell1Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
  [tableViewCell1Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
  [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell1Data];
  
  // ----------------------------;
  // Cell -> tableViewCell2;
  // ----------------------------;
  
  NSMutableDictionary *tableViewCell2Data = [NSMutableDictionary dictionary];
  UITableViewCell *tableViewCell2 = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
  tableViewCell2.textLabel.text = @"Joe Barniak";
  tableViewCell2.detailTextLabel.text = @"Subtitle";
  tableViewCell2.accessoryType = UITableViewCellAccessoryNone;
  [tableViewCell2Data setObject:tableViewCell2 forKey:@"cell"];
  [tableViewCell2Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
  [tableViewCell2Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
  [tableViewCell2Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
  [tableViewCell2Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
  [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell2Data];
  
  // ----------------------------;
  // Cell -> tableViewCell3;
  // ----------------------------;
  
  NSMutableDictionary *tableViewCell3Data = [NSMutableDictionary dictionary];
  UITableViewCell *tableViewCell3 = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
  tableViewCell3.textLabel.text = @"Brandon Bloodworth";
  tableViewCell3.detailTextLabel.text = @"Subtitle";
  tableViewCell3.accessoryType = UITableViewCellAccessoryNone;
  [tableViewCell3Data setObject:tableViewCell3 forKey:@"cell"];
  [tableViewCell3Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
  [tableViewCell3Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
  [tableViewCell3Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
  [tableViewCell3Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
  [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell3Data];
  
  // ----------------------------;
  // Cell -> tableViewCell4;
  // ----------------------------;
  
  NSMutableDictionary *tableViewCell4Data = [NSMutableDictionary dictionary];
  UITableViewCell *tableViewCell4 = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
  tableViewCell4.textLabel.text = @"Barbara Brygider";
  tableViewCell4.detailTextLabel.text = @"Subtitle";
  tableViewCell4.accessoryType = UITableViewCellAccessoryNone;
  [tableViewCell4Data setObject:tableViewCell4 forKey:@"cell"];
  [tableViewCell4Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
  [tableViewCell4Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
  [tableViewCell4Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
  [tableViewCell4Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
  [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell4Data];
  
  // ----------------------------;
  // Cell -> tableViewCell5;
  // ----------------------------;
  
  NSMutableDictionary *tableViewCell5Data = [NSMutableDictionary dictionary];
  UITableViewCell *tableViewCell5 = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
  tableViewCell5.textLabel.text = @"Jed Deplitch";
  tableViewCell5.detailTextLabel.text = @"Subtitle";
  tableViewCell5.accessoryType = UITableViewCellAccessoryNone;
  [tableViewCell5Data setObject:tableViewCell5 forKey:@"cell"];
  [tableViewCell5Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
  [tableViewCell5Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
  [tableViewCell5Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
  [tableViewCell5Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
  [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell5Data];
  
  // ----------------------------;
  // Cell -> tableViewCell6;
  // ----------------------------;
  
  NSMutableDictionary *tableViewCell6Data = [NSMutableDictionary dictionary];
  UITableViewCell *tableViewCell6 = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
  tableViewCell6.textLabel.text = @"Doug Fisher";
  tableViewCell6.detailTextLabel.text = @"Subtitle";
  tableViewCell6.accessoryType = UITableViewCellAccessoryNone;
  [tableViewCell6Data setObject:tableViewCell6 forKey:@"cell"];
  [tableViewCell6Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
  [tableViewCell6Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
  [tableViewCell6Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
  [tableViewCell6Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
  [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell6Data];
  
  // ----------------------------;
  // Cell -> tableViewCell7;
  // ----------------------------;
  
  NSMutableDictionary *tableViewCell7Data = [NSMutableDictionary dictionary];
  UITableViewCell *tableViewCell7 = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
  tableViewCell7.textLabel.text = @"Mike Funderburk";
  tableViewCell7.detailTextLabel.text = @"Subtitle";
  tableViewCell7.accessoryType = UITableViewCellAccessoryNone;
  [tableViewCell7Data setObject:tableViewCell7 forKey:@"cell"];
  [tableViewCell7Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
  [tableViewCell7Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
  [tableViewCell7Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
  [tableViewCell7Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
  [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell7Data];
  
  // ----------------------------;
  // Cell -> tableViewCell8;
  // ----------------------------;
  
  NSMutableDictionary *tableViewCell8Data = [NSMutableDictionary dictionary];
  UITableViewCell *tableViewCell8 = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
  tableViewCell8.textLabel.text = @"Lex Wright";
  tableViewCell8.detailTextLabel.text = @"Subtitle";
  tableViewCell8.accessoryType = UITableViewCellAccessoryNone;
  [tableViewCell8Data setObject:tableViewCell8 forKey:@"cell"];
  [tableViewCell8Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
  [tableViewCell8Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
  [tableViewCell8Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
  [tableViewCell8Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
  [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell8Data];
  
  // ----------------------------;
  // UINavigationBar -> navigationBar1;
  // ----------------------------;
  
  UINavigationBar *navigationBar1 = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
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
  navigationBar1.topItem.title = @"Net Zero Live";
  [navigationBar1 setTitleVerticalPositionAdjustment:0.0 forBarMetrics:UIBarMetricsDefault];
  navigationBar1.topItem.hidesBackButton = YES;
  [navigationBar1 release];
  
  
  // ----------------------------;
  // UIButton -> detailButton1;
  // ----------------------------;
  
  UIButton *detailButton1 = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
  CGRect detailButton1Rect = detailButton1.frame;
  detailButton1Rect.origin.x = 285;
  detailButton1Rect.origin.y =  73;
  detailButton1.frame = detailButton1Rect;
  [contentView addSubview:detailButton1];
  detailButton1.alpha = 1.0;
  detailButton1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  
  
  // ----------------------------;
  // UIButton -> detailButton2;
  // ----------------------------;
  
  UIButton *detailButton2 = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
  CGRect detailButton2Rect = detailButton2.frame;
  detailButton2Rect.origin.x = 285;
  detailButton2Rect.origin.y =  117;
  detailButton2.frame = detailButton2Rect;
  [contentView addSubview:detailButton2];
  detailButton2.alpha = 1.0;
  detailButton2.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  
  
  // ----------------------------;
  // UIButton -> detailButton3;
  // ----------------------------;
  
  UIButton *detailButton3 = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
  CGRect detailButton3Rect = detailButton3.frame;
  detailButton3Rect.origin.x = 285;
  detailButton3Rect.origin.y =  160;
  detailButton3.frame = detailButton3Rect;
  [contentView addSubview:detailButton3];
  detailButton3.alpha = 1.0;
  detailButton3.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  
  
  // ----------------------------;
  // UIButton -> detailButton4;
  // ----------------------------;
  
  UIButton *detailButton4 = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
  CGRect detailButton4Rect = detailButton4.frame;
  detailButton4Rect.origin.x = 285;
  detailButton4Rect.origin.y =  205;
  detailButton4.frame = detailButton4Rect;
  [contentView addSubview:detailButton4];
  detailButton4.alpha = 1.0;
  detailButton4.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  
  
  // ----------------------------;
  // UIButton -> detailButton5;
  // ----------------------------;
  
  UIButton *detailButton5 = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
  CGRect detailButton5Rect = detailButton5.frame;
  detailButton5Rect.origin.x = 285;
  detailButton5Rect.origin.y =  248;
  detailButton5.frame = detailButton5Rect;
  [contentView addSubview:detailButton5];
  detailButton5.alpha = 1.0;
  detailButton5.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  
  
  // ----------------------------;
  // UIButton -> detailButton6;
  // ----------------------------;
  
  UIButton *detailButton6 = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
  CGRect detailButton6Rect = detailButton6.frame;
  detailButton6Rect.origin.x = 285;
  detailButton6Rect.origin.y =  292;
  detailButton6.frame = detailButton6Rect;
  [contentView addSubview:detailButton6];
  detailButton6.alpha = 1.0;
  detailButton6.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  
  
  // ----------------------------;
  // UIButton -> detailButton7;
  // ----------------------------;
  
  UIButton *detailButton7 = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
  CGRect detailButton7Rect = detailButton7.frame;
  detailButton7Rect.origin.x = 285;
  detailButton7Rect.origin.y =  336;
  detailButton7.frame = detailButton7Rect;
  [contentView addSubview:detailButton7];
  detailButton7.alpha = 1.0;
  detailButton7.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  
  
  // ----------------------------;
  // UITabBar -> tabBar1;
  // ----------------------------;
  
  UITabBar *tabBar1 = [[UITabBar alloc] initWithFrame:CGRectMake(0, 699, 320, 49)];
  tabBar1.tag = 1;
  tabBar1.delegate = (id<UITabBarDelegate>)self;
  [contentView addSubview:tabBar1];
  tabBar1.alpha = 1.0;
  tabBar1.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
  [tabBar1 release];
  
  
  // ----------------------------;
  // Tab Bar Item -> tabBarItem1;
  // ----------------------------;
  
  UITabBarItem *tabBarItem1 = [[[UITabBarItem alloc] initWithTitle:@"Equipment" image:[UIImage imageNamed:@"PeopleScreenViewControllerLeft_Image_1.png"] tag:1] autorelease];
  
  
  // ----------------------------;
  // Tab Bar Item -> tabBarItem2;
  // ----------------------------;
  
  UITabBarItem *tabBarItem2 = [[[UITabBarItem alloc] initWithTitle:@"Personnel" image:[UIImage imageNamed:@"PeopleScreenViewControllerLeft_Image_2.png"] tag:2] autorelease];
  
  
  // ----------------------------;
  // Tab Bar Item -> tabBarItem3;
  // ----------------------------;
  
  UITabBarItem *tabBarItem3 = [[[UITabBarItem alloc] initWithTitle:@"Survey" image:[UIImage imageNamed:@"PeopleScreenViewControllerLeft_Image_3.png"] tag:3] autorelease];
  
  tabBar1.items = [NSArray arrayWithObjects:tabBarItem1, tabBarItem2, tabBarItem3, nil];
  
  // ----------------------------;
  // UIButton -> detailButton8;
  // ----------------------------;
  
  UIButton *detailButton8 = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
  CGRect detailButton8Rect = detailButton8.frame;
  detailButton8Rect.origin.x = 285;
  detailButton8Rect.origin.y =  380;
  detailButton8.frame = detailButton8Rect;
  [contentView addSubview:detailButton8];
  detailButton8.alpha = 1.0;
  detailButton8.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  
  
  contentView.frame = self.view.bounds;
  [self.view addSubview:contentView];
  [contentView release];
}

- (void)viewDidUnload {
  self.tableView1Data = nil;
  [super viewDidUnload];
}

- (void)dealloc {
  self.tableView1Data = nil;
  [super dealloc];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackOpaque animated:animated];
}


// ----------------
// Table View
// ----------------

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  if (tableView.tag == 1) {;
    return self.tableView1Data.count;
  };
  
  return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    return [[sectionData objectForKey:@"cells"] count];
  };
  
  return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:indexPath.section];
    NSDictionary *cellData =  [[sectionData objectForKey:@"cells"] objectAtIndex:indexPath.row];
    return [cellData objectForKey:@"cell"];
  };
  
  return [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    return [sectionData objectForKey:@"headerText"];
  };
  
  return nil;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    return [sectionData objectForKey:@"footerText"];
  };
  
  return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:indexPath.section];
    NSDictionary *cellData =  [[sectionData objectForKey:@"cells"] objectAtIndex:indexPath.row];
    return [[cellData objectForKey:@"height"] floatValue];
  };
  
  return tableView.rowHeight;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    if ([[sectionData objectForKey:@"customHeaderView"] boolValue]) {;
      return [sectionData objectForKey:@"headerView"];
    } else {;
      return nil;
    };
  };
  
  return nil;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    if ([[sectionData objectForKey:@"customFooterView"] boolValue]) {;
      return [sectionData objectForKey:@"footerView"];
    } else {;
      return nil;
    };
  };
  
  return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    if ([[sectionData objectForKey:@"customHeaderView"] boolValue]) {;
      return [[sectionData objectForKey:@"customHeaderViewHeight"] floatValue];
    } else {;
      if (![[sectionData objectForKey:@"headerText"] isEqualToString:@""]) {;
        return 22;
      } else {;
        return 0;
      };
    };
  };
  
  return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    if ([[sectionData objectForKey:@"customFooterView"] boolValue]) {;
      return [[sectionData objectForKey:@"customFooterViewHeight"] floatValue];
    } else {;
      if (![[sectionData objectForKey:@"footerText"] isEqualToString:@""]) {;
        return 22;
      } else {;
        return 0;
      };
    };
  };
  
  return 0;
}

- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:indexPath.section];
    NSDictionary *cellData =  [[sectionData objectForKey:@"cells"] objectAtIndex:indexPath.row];
    return [[cellData objectForKey:@"indentationLevel"] integerValue];
  };
  
  return 0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:indexPath.section];
    NSDictionary *cellData =  [[sectionData objectForKey:@"cells"] objectAtIndex:indexPath.row];
    NSString *actionSelector = [cellData objectForKey:@"actionSelector"];
    if (actionSelector) {;
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
        [self performSelector:NSSelectorFromString(actionSelector) withObject:cell];
    };
  };
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


// ----------------
// Navigation Bar
// ----------------

- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item {
  return NO;
}



@end