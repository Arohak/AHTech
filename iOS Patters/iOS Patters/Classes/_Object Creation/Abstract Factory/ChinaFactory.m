//
//  ChinaFactory.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "ChinaFactory.h"
#import "ChinaIPhone.h"
#import "ChinaIPad.h"

@implementation ChinaFactory

- (GenericIPhone *)getIPhone
{
    ChinaIPhone *iphone = [[ChinaIPhone alloc] init];
    return iphone;
}

- (GenericIPad *)getIPad
{
    ChinaIPad *ipad = [[ChinaIPad alloc] init];
    return ipad;
}

@end
