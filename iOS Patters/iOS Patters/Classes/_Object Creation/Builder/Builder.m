//
//  Builder.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "Builder.h"
#import "LowPricePhoneBuilder.h"
#import "HighPricePhoneBuilder.h"
#import "FactorySalesMan.h"

@implementation Builder

+ (void)createBuilder:(BOOL)isLowPrice
{
    BPAndroidPhoneBuilder *phoneBuilder = isLowPrice ? [LowPricePhoneBuilder new] : [HighPricePhoneBuilder new];
    
    FactorySalesMan *salesMan = [[FactorySalesMan alloc] init];
    [salesMan setBulider:phoneBuilder];
    [salesMan constructPhone];
    
    AndroidPhone *phone = [salesMan getPhone];
    
    NSLog(@"Phone Name = %@, osVersion = %@, cpu code name = %@, ram size = %@, os version code = %@, launcher = %@",
          phone.name,
          phone.osVersion,
          phone.cpuCodeName,
          phone.RAMsize,
          phone.osVersionCode,
          phone.launcher);
}

@end
