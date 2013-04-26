//
//  FirstViewController.m
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/24/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "FirstViewController.h"
#import "Solutions.h"
#import "CustomTableCell.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Net Zero Solutions", @"Net Zero Solutions");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
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
    CustomTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil)
    {
        NSArray * views = [[NSBundle mainBundle] loadNibNamed:@"CustomTableCell" owner:nil options:nil];
        
        for (UIView * view in views)
        {
            if ([view isKindOfClass:[CustomTableCell class]])
            {
                cell = (CustomTableCell *)view;
                
                Solutions * equipment = _solutions[indexPath.row];
                cell.SolutionNameCustomLabel.text = equipment.equipmentName;
                cell.SolutionNameCustomLabel.font = [UIFont fontWithName:@"MicrogrammaDEE-BoldExte" size:20];
                cell.SolutionNameCustomLabel.textColor = [UIColor colorWithRed:22.0/255.0 green:25.0/255.0 blue:35.0/255.0 alpha:1];
                
                cell.SolutionLocationCustomLabel.text = equipment.equipmentLocation;
                cell.SolutionLocationCustomLabel.font = [UIFont fontWithName:@"MicrogrammaD-MediExte" size:14];
                cell.SolutionLocationCustomLabel.textColor = [UIColor colorWithRed:125.0/255.0 green:123.0/255.0 blue:100.0/255.0 alpha:1];
                
                cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            }
        }
    }
    
    // Configure the cell...
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Solutions * selectedEquipment = [_solutions objectAtIndex:indexPath.row];
    if (_delegate)
    {
        [_delegate selectedEquipment:selectedEquipment];
    }
}

@end
