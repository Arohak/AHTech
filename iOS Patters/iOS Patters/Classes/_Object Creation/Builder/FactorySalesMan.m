//
//  FactorySalesMan.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "FactorySalesMan.h"

@implementation FactorySalesMan

- (void)setBulider:(BPAndroidPhoneBuilder *)aBuilder
{
    self._builder = aBuilder;
}
- (AndroidPhone *)getPhone
{
    return self._builder.getPhone;
}
- (void)constructPhone
{
    [self._builder setOSVersion];
    [self._builder setName];
    [self._builder setCPUCodeName];
    [self._builder setRAMSize];
    [self._builder setOSVersionCode];
    [self._builder setLauncher];
}

@end
