//
//  Solutions.m
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/24/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "Solutions.h"

@implementation Solutions

+(Solutions *)newEquipmentWithName:(NSString *)equipmentName location:(NSString *)equipmentLocation quantity:(NSString *)equipmentQuantity advisor:(NSString *)equipmentAdvisor equipment:(Equipment)equipment latitude:(CGFloat)equipmentLatitude longitude:(CGFloat)equipmentLongitude;

{
    Solutions * solution = [[Solutions alloc] init];
    solution.equipmentName = equipmentName;
    solution.equipmentLocation = equipmentLocation;
    solution.equipmentQuantity = equipmentQuantity;
    solution.equipmentAdvisor = equipmentAdvisor;
    solution.equipment = equipment;
    solution.equipmentLatitude = equipmentLatitude;
    solution.equipmentLongitude = equipmentLongitude;
    
    return solution;
}

@end