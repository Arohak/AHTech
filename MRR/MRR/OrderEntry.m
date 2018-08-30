//
//  OrderEntry.m
//  MRR
//
//  Created by Ara Hakobyan on 05/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "OrderEntry.h"

@implementation OrderEntry

- (id) initWithId:(NSString *)oid
{
    self = [super init];
    if (self) {
        NSLog(@"Initializing OrderEntry object");
        orderId = oid;
        [orderId retain];
        item = [[OrderItem alloc] initWithName:@"Doodle"];
        shippingAddress = [[Address alloc] init];
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"Deallocating OrderEntry object");
    [item release];
    [orderId release];
    [shippingAddress release];
    [super dealloc];
}

- (void)privateMethod {
    NSLog(@"private method is public");
}

@end
