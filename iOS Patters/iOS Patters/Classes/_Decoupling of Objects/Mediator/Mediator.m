//
//  Mediator.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "Mediator.h"
#import "CentrallProcessor.h"
#import "Thermometer.h"
#import "ConditioningSystem.h"

@implementation Mediator

+ (void)test
{
    CentrallProcessor *proccessor = [[CentrallProcessor alloc] init];
    Thermometer *therm = [[Thermometer alloc] initWithCore:proccessor];
    ConditioningSystem *condSystem = [[ConditioningSystem alloc] initWithCore:proccessor];
    
    proccessor.condSystem = condSystem;
    proccessor.thermometer = therm;
    [therm temperatureChanged:45];
}

@end
