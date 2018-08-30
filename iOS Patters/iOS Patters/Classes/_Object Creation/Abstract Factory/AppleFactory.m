//
//  AppleFactory.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "AppleFactory.h"
#import "AppleIPhone.h"
#import "AppleIPad.h"

@implementation AppleFactory

- (GenericIPhone *)getIPhone
{
    AppleIPhone *iphone = [[AppleIPhone alloc] init];
    return iphone;
}

- (GenericIPad *)getIPad
{
    AppleIPad *ipad = [[AppleIPad alloc] init];
    return ipad;
}

@end
