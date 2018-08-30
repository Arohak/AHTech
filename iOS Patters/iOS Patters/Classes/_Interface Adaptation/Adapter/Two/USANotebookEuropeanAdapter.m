//
//  USANotebookEuropeanAdapter.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "USANotebookEuropeanAdapter.h"
#import "EuropeanNotebookCharger.h"
#import "USANotebookCharger.h"

@implementation USANotebookEuropeanAdapter

- (id)initWithUSANotebookCharger:(USANotebookCharger *)charger
{
    self = [super init];
    self.usaCharger = charger;
    
    return self;
}

- (void)charge
{
    EuropeanNotebookCharger *euroCharge = [[EuropeanNotebookCharger alloc] init];
    euroCharge.delegate = self;
    [euroCharge charge];
}

#pragma mark - EuropeanNotebookChargerDelegate -
- (void)chargetNotebookRoundHoles:(Charger *)charger
{
    [self.usaCharger chargeNotebookRectHoles:charger];
}

@end
