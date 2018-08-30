//
//  ChinaIPad.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "ChinaIPad.h"

@implementation ChinaIPad

- (id)init
{
    self = [super init];
    self.osName = @"Windows CE";
    self.productName = @"Buan Que Ipado Killa";
    self.screenSize = [[NSNumber alloc] initWithFloat:12.5f];
    
    return self;
}

@end
