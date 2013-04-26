//
//  FirstViewController.h
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/24/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Solutions.h"
#import "SolutionsSelectionDelegate.h"
#import "CustomTableCell.h"

@interface FirstViewController : UIViewController <UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *SolutionsTableView;

@property (nonatomic, strong) NSMutableArray * solutions;

@property (nonatomic, assign) id<SolutionsSelectionDelegate> delegate;

@end
