//
//  CentrallProcessor.h
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Thermometer;
@class SmartHousePart;
@class ConditioningSystem;

@interface CentrallProcessor : NSObject

@property (nonatomic, weak) Thermometer *thermometer;
@property (nonatomic, weak) ConditioningSystem *condSystem;

- (void)valueChanged:(SmartHousePart *)aPart;

@end
