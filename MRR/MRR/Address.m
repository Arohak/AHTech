//
//  Address.m
//  MRR
//
//  Created by Ara Hakobyan on 05/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "Address.h"

@implementation Address

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSLog(@"Initializing Address object");
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"Deallocating Address object");
    [super dealloc];
}

@end
