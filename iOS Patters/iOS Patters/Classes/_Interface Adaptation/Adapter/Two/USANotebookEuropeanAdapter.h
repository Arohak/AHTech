//
//  USANotebookEuropeanAdapter.h
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "Charger.h"
#import "EuropeanNotebookChargerDelegate.h"

@class USANotebookCharger;

@interface USANotebookEuropeanAdapter : Charger <EuropeanNotebookChargerDelegate>

@property (nonatomic, strong) USANotebookCharger *usaCharger;

- (id)initWithUSANotebookCharger:(USANotebookCharger *)charger;
- (void)charge;

@end
