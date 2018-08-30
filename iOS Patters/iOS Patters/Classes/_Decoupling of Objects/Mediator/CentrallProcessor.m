//
//  CentrallProcessor.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "CentrallProcessor.h"
#import "SmartHousePart.h"
#import "Thermometer.h"
#import "ConditioningSystem.h"

@implementation CentrallProcessor

- (void)valueChanged:(SmartHousePart *)aPart
{
    NSLog(@"Value changed! We need to do smth!");
    
    //detecting that changes are done by thermometer
    if ( [aPart isKindOfClass:[Thermometer class]]) {
        NSLog(@"Oh, the change is temperature");
        [self.condSystem startCondition];
    }
}

@end
