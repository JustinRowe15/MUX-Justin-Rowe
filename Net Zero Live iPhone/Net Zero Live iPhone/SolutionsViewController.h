//
//  SolutionsViewController.h
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/24/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Solutions.h"
#import "DetailedSolutionsViewController.h"

@interface SolutionsViewController : UITableViewController <UITableViewDelegate, DetailedSolutionsViewControllerDelegate, UITableViewDataSource>
{
    NSIndexPath * selectedPath;
}

@property (weak, nonatomic) IBOutlet UITableView *SolutionsTableView;

@property (nonatomic, strong) NSMutableArray * solutions;

@end
