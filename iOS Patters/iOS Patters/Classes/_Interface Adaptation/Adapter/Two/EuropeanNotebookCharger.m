//
//  EuropeanNotebookCharger.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "EuropeanNotebookCharger.h"

@implementation EuropeanNotebookCharger

@synthesize delegate = _delegate;

- (id)init
{
    self = [super self];
    self.delegate = self;
    return self;
}

- (void)charge
{
    [_delegate chargetNotebookRoundHoles:self];
    [super charge];
}

#pragma mark - EuropeanNotebookChargerDelegate -
- (void)chargetNotebookRoundHoles:(Charger *)charger
{
    //and yeah you can do smth with charger.
    NSLog(@"Charging with 220 and round holes!");
}

@end
