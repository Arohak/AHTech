//
//  RavenAdapter.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "RavenAdapter.h"

@implementation RavenAdapter

@synthesize raven = _raven;

- (id)initWithRaven:(Raven *)adaptee
{
    self = [super self];
    _raven = adaptee;
    
    return self;
}

- (void)sing
{
    [_raven voice];
}

- (void)fly
{
    [_raven flySearchAndDestroy];
}

@end
