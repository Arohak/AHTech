//
//  AdapterOne.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "AdapterOne.h"
#import "Bird.h"
#import "RavenAdapter.h"

@implementation AdapterOne

+ (void)test
{
    Bird *simpleBird = [[Bird alloc] init];
    Raven *simpleRaven = [[Raven alloc] init];
    RavenAdapter *ravenAdapter = [[RavenAdapter alloc] initWithRaven:simpleRaven];
    
    [self makeTheBirdTest:simpleBird];
    [self makeTheBirdTest:ravenAdapter];
}

+ (void)makeTheBirdTest:(id<BirdProtocol>)aBird
{
    [aBird fly];
    [aBird sing];
}

@end
