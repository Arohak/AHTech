//
//  Thermometer.h
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "SmartHousePart.h"

@interface Thermometer : SmartHousePart

- (void)temperatureChanged:(NSInteger)temperature;

@end
