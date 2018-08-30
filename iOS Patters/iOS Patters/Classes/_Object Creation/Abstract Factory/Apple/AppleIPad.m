//
//  AppleIPad.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "AppleIPad.h"

@implementation AppleIPad

- (id)init
{
    self = [super init];
    self.productName = @"IPad";
    self.osName = @"iOS";
    self.screenSize = [[NSNumber alloc] initWithFloat:7.7f];
    
    return self;
}

@end
