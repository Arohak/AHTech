//
//  SomeSubscriber.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "SomeSubscriber.h"

@implementation SomeSubscriber

- (void)valueChanged:(NSString *)valueName newValue:(NSString *)newValue
{
    NSLog(@"And some subscriber tells: Hmm, value %@ changed to %@", valueName, newValue);
}

@end
