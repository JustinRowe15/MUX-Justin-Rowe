//
//  MapViewDelegate.h
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/25/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Solutions;

@protocol MapViewDelegate <NSObject>

@required
-(void)selectedMap:(Solutions *)newMap;

@end
