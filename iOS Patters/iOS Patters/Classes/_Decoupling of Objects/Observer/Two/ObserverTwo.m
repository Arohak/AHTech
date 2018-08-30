//
//  ObserverTwo.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "ObserverTwo.h"
#import "StandardSubjectImplementation.h"
#import "SomeSubscriber.h"
#import "OtherSubscriber.h"

@implementation ObserverTwo

+ (void)test
{
    StandardSubjectImplementation *subject = [[StandardSubjectImplementation alloc] init];
    SomeSubscriber *someSubscriber = [[SomeSubscriber alloc] init];
    OtherSubscriber *otherSubscriber = [[OtherSubscriber alloc] init];
    [subject addObserver:someSubscriber];
    [subject addObserver: otherSubscriber];
    
    [subject changeValue:@"strange value" andValue:@"newValue"];
}

@end
