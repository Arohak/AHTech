//
//  OrderItem.h
//  MRR
//
//  Created by Ara Hakobyan on 05/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OrderItem : NSObject
{
    @public NSString *name;
}
- (id) initWithName:(NSString *)itemName;

@end
