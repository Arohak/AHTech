//
//  EuropeanNotebookCharger.h
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "Charger.h"
#import "EuropeanNotebookChargerDelegate.h"

@interface EuropeanNotebookCharger : Charger <EuropeanNotebookChargerDelegate>

@property (nonatomic, strong) id<EuropeanNotebookChargerDelegate> delegate;

@end
