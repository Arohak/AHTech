//
//  Thermometer.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "Thermometer.h"

@interface Thermometer ()

@property (nonatomic, assign) NSInteger temperature;

@end

@implementation Thermometer

- (void)temperatureChanged:(NSInteger)temperature
{
    self.temperature = temperature;
    [self numbersChanged];
}

@end
