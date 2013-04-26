//
//  SolutionsSelectionDelegate.h
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/24/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Solutions;

@protocol SolutionsSelectionDelegate <NSObject>

@required
-(void)selectedEquipment:(Solutions *)newEquipment;

@end
