//
//  AbstractFactory.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "AbstractFactory.h"
#import "AppleFactory.h"
#import "ChinaFactory.h"

@implementation AbstractFactory

+ (void)createFactory:(BOOL)isThirdWorld
{
    IPhoneFactory *factory = isThirdWorld ? [ChinaFactory new] : [AppleFactory new];
    
    GenericIPad *ipad = factory.getIPad;
    GenericIPhone *iphone = factory.getIPhone;
    NSLog(@"IPad named = %@, osname = %@, screensize = %@", ipad.productName, ipad.osName, ipad.screenSize.stringValue);
    NSLog(@"IPhone named = %@, osname = %@", iphone.productName, iphone.osName);
}

@end
