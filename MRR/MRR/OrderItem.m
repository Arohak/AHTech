//
//  OrderItem.m
//  MRR
//
//  Created by Ara Hakobyan on 05/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "OrderItem.h"

@implementation OrderItem

- (id) initWithName:(NSString *)itemName
{
    if ((self = [super init]))
    {
        NSLog(@"Initializing OrderItem object");
        name = itemName;
        [name retain];
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"Deallocating OrderItem object");
    [name release];
    [super dealloc];
}

@end
