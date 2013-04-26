//
//  PersonnelViewController.h
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/25/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Personnel.h"
#import "DetailedPersonnelViewController.h"

@interface PersonnelViewController : UITableViewController <UITableViewDelegate, DetailedPersonnelViewControllerDelegate, UITableViewDataSource>
{
    NSIndexPath * selectedPath;
}

@property (strong, nonatomic) IBOutlet UITableView *personnelTableView;

@property (nonatomic, strong) NSMutableArray * people;

@end
