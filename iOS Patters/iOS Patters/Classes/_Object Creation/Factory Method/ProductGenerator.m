//
//  ProductGenerator.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "ProductGenerator.h"
#import "Toy.h"
#import "Dress.h"

@implementation ProductGenerator

- (Product *)getProduct:(NSInteger)price
{
    if (price > 0 && price < 100) {
        Toy *toy = [[Toy alloc] init];
        return toy;
    }
    
    if (price >= 100) {
        Dress *dress = [[Dress alloc] init];
        return dress;
    }
    
    return nil;
}

@end
