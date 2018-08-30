//
//  main.m
//  MRR
//
//  Created by Ara Hakobyan on 05/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OrderEntry.h"
#import <objc/runtime.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create an OrderEntry object for manual release
        NSString *orderId = [[NSString alloc] initWithString:@"A1"];
        OrderEntry *entry = [[OrderEntry alloc] initWithId:orderId];
        [entry privateMethod];
        
        // Release orderId (retained by OrderEntry, so object not deallocated!)
        [orderId release];
        NSLog(@"New order, ID = %@, item: %@", entry->orderId, entry->item->name);
        
        // Must manually release OrderEntry!
        [entry release];
        
        // Create an autorelease OrderEntry object, released at the end of
        // the autorelease pool block
        OrderEntry *autoEntry = [[[OrderEntry alloc] initWithId:@"A2"] autorelease];
        NSLog(@"New order, ID = %@, item: %@", autoEntry->orderId, autoEntry->item->name);
    }
    return 0;
}
