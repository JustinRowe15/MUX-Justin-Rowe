//
//  SolutionsViewController.m
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/24/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "SolutionsViewController.h"
#import "Solutions.h"

@interface SolutionsViewController ()

@end

@implementation SolutionsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Net Zero Solutions", @"Net Zero Solutions");
        self.tabBarItem.image = [UIImage imageNamed:@"179-notepad"];
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
    _solutions = [NSMutableArray array];
    
    [_solutions addObject:[Solutions newEquipmentWithName:@"Sun Dial" location:@"Nouakchott, Mauritania" quantity:@"2" advisor:@"Mike Sargent" equipment:Sundial latitude:18.0783 longitude:-15.9744]];
    [_solutions addObject:[Solutions newEquipmentWithName:@"Flexfuel" location:@"Dakar, Senegal" quantity:@"4" advisor:@"Mike Sargent" equipment:Flexfuel latitude:14.6962 longitude:-17.4442]];
    [_solutions addObject:[Solutions newEquipmentWithName:@"T-Series" location:@"Niamey, Niger" quantity:@"6" advisor:@"Mike Sargent" equipment:TSeries latitude:13.5086 longitude:2.1111]];
    [_solutions addObject:[Solutions newEquipmentWithName:@"H-Series" location:@"Bagram, Afghanistan" quantity:@"10" advisor:@"Joe Amadee" equipment:HSeries latitude:34.9462 longitude:69.2650]];
    [_solutions addObject:[Solutions newEquipmentWithName:@"Sun Dial" location:@"Bagram, Afghanistan" quantity:@"7" advisor:@"Joe Amadee" equipment:Sundial latitude:34.9462 longitude:69.2650]];
    [_solutions addObject:[Solutions newEquipmentWithName:@"Solar Stik" location:@"Kandahar, Afghanistan" quantity:@"6" advisor:@"Joe Amadee" equipment:SolarStik latitude:31.6078 longitude:65.7053]];
    [_solutions addObject:[Solutions newEquipmentWithName:@"Net Zero Combat Outpost" location:@"Nouakchott, Mauritania" quantity:@"1" advisor:@"Mike Sargent" equipment:NetZeroCOP latitude:18.0783 longitude:-15.9744]];
    [_solutions addObject:[Solutions newEquipmentWithName:@"Net Zero Lite Camp" location:@"Niamey, Niger" quantity:@"2" advisor:@"Mike Sargent" equipment:LiteCamp latitude:13.5086 longitude:2.1111]];
    [_solutions addObject:[Solutions newEquipmentWithName:@"Flexfuel" location:@"Zamboanga City, Phillippines" quantity:@"3" advisor:@"Jed Deplitch" equipment:Flexfuel latitude:6.8667 longitude:122.0667]];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.SolutionsTableView.delegate = self;
    self.SolutionsTableView.dataSource = self;
    
    UIBarButtonItem * addSolutionButton = [[UIBarButtonItem alloc] initWithTitle:@"Add" style:UIBarButtonItemStyleBordered target:self action:@selector(solutionAlert)];
    
    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObject:addSolutionButton];
}

-(void)solutionAlert
{
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Add Solution" message:@"This will pop up a page to add a solution." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
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
    return [_solutions count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
                
            Solutions * equipment = _solutions[indexPath.row];
            cell.textLabel.text = equipment.equipmentName;
            cell.textLabel.font = [UIFont fontWithName:@"MicrogrammaDEE-BoldExte" size:18];
            cell.textLabel.textColor = [UIColor colorWithRed:125.0/255.0 green:123.0/255.0 blue:100.0/255.0 alpha:1];
                
            cell.detailTextLabel.text = equipment.equipmentLocation;
            cell.detailTextLabel.font = [UIFont fontWithName:@"MicrogrammaD-MediExte" size:14];
            cell.detailTextLabel.textColor = [UIColor colorWithRed:125.0/255.0 green:123.0/255.0 blue:100.0/255.0 alpha:1];
                
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    // Configure the cell...
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    selectedPath = indexPath;
    Solutions * chosenSolution = [self.solutions objectAtIndex:indexPath.row];
    DetailedSolutionsViewController * detailedViewController = [[DetailedSolutionsViewController alloc] init];
    detailedViewController.delegate = self;
    detailedViewController.solution = chosenSolution;
    
    [self.navigationController pushViewController:detailedViewController animated:YES];
}

-(void)detailedSolutionsViewControllerDidFinish:(DetailedSolutionsViewController *)sender
{
    if (selectedPath)
    {
        [self.SolutionsTableView beginUpdates];
        [self.SolutionsTableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:selectedPath] withRowAnimation:UITableViewRowAnimationNone];
        [self.SolutionsTableView endUpdates];
    }
    selectedPath = nil;
}

@end
