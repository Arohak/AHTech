//
//  AdapterTwo.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "AdapterTwo.h"
#import "Charger.h"
#import "USANotebookCharger.h"
#import "EuropeanNotebookCharger.h"
#import "USANotebookEuropeanAdapter.h"

@implementation AdapterTwo

+ (void)test
{
    EuropeanNotebookCharger *euroCharger = [[EuropeanNotebookCharger alloc] init];
    [self makeTheNotebookCharge:euroCharger];
    
    USANotebookCharger *charger = [[USANotebookCharger alloc] init];
    USANotebookEuropeanAdapter *adapter = [[USANotebookEuropeanAdapter alloc] initWithUSANotebookCharger:charger];
    [self makeTheNotebookCharge:adapter];
}

+ (void)makeTheNotebookCharge:(Charger *)aCharger
{
    [aCharger charge];
}

@end
