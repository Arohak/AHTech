//
//  TravellSystemFacade.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "TravellSystemFacade.h"
#import "PathFinder.h"
#import "TravellEngine.h"
#import "TicketPrinitingSystem.h"

@implementation TravellSystemFacade

- (void)travellTo:(NSString *)location
{
    PathFinder *pathFinder = [[PathFinder alloc] init];
    TravellEngine *travellEngine = [[TravellEngine alloc] init];
    TicketPrinitingSystem *ticketPrinitingSystem = [[TicketPrinitingSystem alloc] init];
    
    [pathFinder findCurrentLocation];
    [pathFinder findLocationToTravel:location];
    [pathFinder makeARoute];
    
    [travellEngine findTransport];
    [travellEngine orderTransport];
    
    [ticketPrinitingSystem createTicket];
    [ticketPrinitingSystem printingTicket];
    
    [travellEngine travel];
}

@end
