//
//  PersonnelViewController.m
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/25/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "PersonnelViewController.h"
#import "Personnel.h"

@interface PersonnelViewController ()

@end

@implementation PersonnelViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Net Zero Personnel", @"Net Zero Personnel");
        self.tabBarItem.image = [UIImage imageNamed:@"111-user"];
    }
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if(self)
    {
        
    }
    
    return self;
}

- (void)viewDidLoad
{
    _people = [NSMutableArray array];
    
    //create the people objects then add them to the array list.
    [_people addObject:[Personnel newPersonnelWithName:@"Joe Amadee" currentLocation:@"Bagram, Afghanistan" previousLocation:@"Washington, D.C." cellNumber:@"703-555-1234" aboutMe:@"About Me entry will go here in this paragraph space." lastName:Amadee latitude:34.9462 longitude:69.2650]];
    
    [_people addObject:[Personnel newPersonnelWithName:@"Joe Barniak" currentLocation:@"Kandahar, Afghanistan" previousLocation:@"Bagram, Afghanistan" cellNumber:@"703-555-2345" aboutMe:@"About Me entry will go here in this paragraph space." lastName:Barniak latitude:31.6078 longitude:65.7053]];
    
    [_people addObject:[Personnel newPersonnelWithName:@"Brandon Bloodworth" currentLocation:@"Washington, D.C." previousLocation:@"Denver, Colorado" cellNumber:@"703-555-3456" aboutMe:@"About Me entry will go here in this paragraph space." lastName:Bloodworth latitude:38.8900 longitude:-77.0300]];
    
    [_people addObject:[Personnel newPersonnelWithName:@"Barbara Brygider" currentLocation:@"Washington, D.C" previousLocation:@"New York, New York" cellNumber:@"703-555-1234" aboutMe:@"About Me entry will go here in this paragraph space." lastName:Brygider latitude:38.8900 longitude:-77.0300]];
    
    [_people addObject:[Personnel newPersonnelWithName:@"Jed Deplitch" currentLocation:@"Las Vegas, Nevada" previousLocation:@"Denver, Colorado" cellNumber:@"703-555-2345" aboutMe:@"About Me entry will go here in this paragraph space." lastName:Deplitch latitude:36.0800 longitude:-115.1522]];
    
    [_people addObject:[Personnel newPersonnelWithName:@"Mike Fisher" currentLocation:@"Washington, D.C." previousLocation:@"Denver, Colorado" cellNumber:@"703-555-3456" aboutMe:@"About Me entry will go here in this paragraph space." lastName:Fisher latitude:38.8900 longitude:-77.0300]];
    
    [_people addObject:[Personnel newPersonnelWithName:@"Mike Funderburk" currentLocation:@"Washington, D.C" previousLocation:@"New York, New York" cellNumber:@"703-555-1234" aboutMe:@"About Me entry will go here in this paragraph space." lastName:Funderburk latitude:38.8900 longitude:-77.0300]];
    
    [_people addObject:[Personnel newPersonnelWithName:@"Mike Sargent" currentLocation:@"Las Vegas, Nevada" previousLocation:@"Denver, Colorado" cellNumber:@"703-555-2345" aboutMe:@"About Me entry will go here in this paragraph space." lastName:Sargent latitude:36.0800 longitude:-115.1522]];
    
    [_people addObject:[Personnel newPersonnelWithName:@"Lex Wright" currentLocation:@"Washington, D.C." previousLocation:@"Denver, Colorado" cellNumber:@"703-555-3456" aboutMe:@"About Me entry will go here in this paragraph space." lastName:Wright latitude:38.8900 longitude:-77.0300]];
    
    [super viewDidLoad];

    self.personnelTableView.delegate = self;
    self.personnelTableView.dataSource = self;
    
    UIBarButtonItem * addPersonnelButton = [[UIBarButtonItem alloc] initWithTitle:@"Add" style:UIBarButtonItemStyleBordered target:self action:@selector(personnelAlert)];
    
    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObject:addPersonnelButton];
}

-(void)personnelAlert
{
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Add Personnel" message:@"This will pop up a page to add a person." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_people count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
        Personnel * personnel = _people[indexPath.row];
        cell.textLabel.text = personnel.personnelName;
        cell.textLabel.font = [UIFont fontWithName:@"MicrogrammaDEE-BoldExte" size:18];
        cell.textLabel.textColor = [UIColor colorWithRed:125.0/255.0 green:123.0/255.0 blue:100.0/255.0 alpha:1];
        
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    // Configure the cell...
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    selectedPath = indexPath;
    Personnel * chosenPersonnel = [self.people objectAtIndex:indexPath.row];
    DetailedPersonnelViewController * detailedPersonnelViewController = [[DetailedPersonnelViewController alloc] init];
    detailedPersonnelViewController.delegate = self;
    detailedPersonnelViewController.personnel = chosenPersonnel;
    
    [self.navigationController pushViewController:detailedPersonnelViewController animated:YES];
}

-(void)detailedPersonnelViewControllerDidFinish:(DetailedPersonnelViewController *)sender
{
    if (selectedPath)
    {
        [self.personnelTableView beginUpdates];
        [self.personnelTableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:selectedPath] withRowAnimation:UITableViewRowAnimationNone];
        [self.personnelTableView endUpdates];
    }
    selectedPath = nil;
}

@end
