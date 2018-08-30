//
//  Facade.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "Facade.h"
#import "TravellSystemFacade.h"

@implementation Facade

+ (void)test
{
    TravellSystemFacade *travellSystemFacade = [[TravellSystemFacade alloc] init];
    [travellSystemFacade travellTo:@"Yerevan"];
}

@end
