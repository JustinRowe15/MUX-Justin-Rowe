//
//  Personnel.m
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/25/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "Personnel.h"

@implementation Personnel

+(Personnel *)newPersonnelWithName:(NSString *)personnelName currentLocation:(NSString *)personnelCurrentLocation previousLocation:(NSString *)personnelPreviousLocation cellNumber:(NSString *)personnelCellNumber aboutMe:(NSString *)personnelAboutMe lastName:(PersonnelNames)personnelNames latitude:(CGFloat)personnelLatitude longitude:(CGFloat)personnelLongitude
{
    Personnel * personnel = [[Personnel alloc] init];
    personnel.personnelName = personnelName;
    personnel.personnelCurrentLocation = personnelCurrentLocation;
    personnel.personnelPreviousLocation = personnelPreviousLocation;
    personnel.personnelCellNumber = personnelCellNumber;
    personnel.personnelAboutMe = personnelAboutMe;
    personnel.personnelNames = personnelNames;
    personnel.personnelLatitude = personnelLatitude;
    personnel.personnelLongitude = personnelLongitude;
    
    return personnel;
}

@end
