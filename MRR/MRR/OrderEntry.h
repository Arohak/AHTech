//
//  OrderEntry.h
//  MRR
//
//  Created by Ara Hakobyan on 05/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OrderItem.h"
#import "Address.h"

@interface OrderEntry : NSObject
{
@public
    OrderItem *item;
    NSString *orderId;
    Address *shippingAddress;
}

- (id) initWithId:(NSString *)oid;

@end
