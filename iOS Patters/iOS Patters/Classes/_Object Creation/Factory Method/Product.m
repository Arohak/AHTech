//
//  Product.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "Product.h"

@implementation Product

- (NSInteger)getTotalPrice:(NSInteger)sum
{
    return self.price + sum;
}

- (void)saveObject
{
    NSLog(@"I am saving an object in to product database");
}

@end
