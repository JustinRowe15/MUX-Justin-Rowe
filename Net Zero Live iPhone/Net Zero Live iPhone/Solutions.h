//
//  Solutions.h
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/24/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    Sundial = 0,
    Flexfuel,
    HSeries,
    TSeries,
    NetZeroCOP,
    SolarStik,
    LiteCamp,
} Equipment;

@interface Solutions : NSObject

@property (nonatomic, strong) NSString * equipmentName;
@property (nonatomic, strong) NSString * equipmentLocation;
@property (nonatomic, strong) NSString * equipmentQuantity;
@property (nonatomic, strong) NSString * equipmentAdvisor;
@property CGFloat equipmentLatitude;
@property CGFloat equipmentLongitude;
@property (nonatomic, assign) Equipment equipment;

+(Solutions *)newEquipmentWithName:(NSString *)equipmentName location:(NSString *)equipmentLocation quantity:(NSString *)equipmentQuantity advisor:(NSString *)equipmentAdvisor equipment:(Equipment)equipment latitude:(CGFloat)equipmentLatitude longitude:(CGFloat)equipmentLongitude;

@end
