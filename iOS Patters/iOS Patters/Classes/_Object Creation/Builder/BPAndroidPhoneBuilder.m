//
//  BPAndroidPhoneBuilder.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "BPAndroidPhoneBuilder.h"

@implementation BPAndroidPhoneBuilder

- (id)init
{
    self = [super init];
    self._phone = [[AndroidPhone alloc] init];
    return self;
}

- (AndroidPhone *)getPhone
{
    return self._phone;
}

@end
