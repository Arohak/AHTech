//
//  FactoryMethod.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "FactoryMethod.h"
#import "ProductGenerator.h"

@implementation FactoryMethod

+ (void)saveExpenses:(NSUInteger)aPrice
{
    ProductGenerator *pGenerator = [[ProductGenerator alloc] init];
    Product *expense = [pGenerator getProduct:aPrice];
    [expense saveObject];
}

@end
