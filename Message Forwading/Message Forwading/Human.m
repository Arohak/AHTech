//
//  Human.m
//  Message Forwading
//
//  Created by Ara Hakobyan on 21/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "Human.h"
#import <objc/runtime.h>

@implementation Human

- (NSString *)fname
{
    return @"first name";
}

- (NSString *)lname
{
    return @"last name";
}

- (void)swizzling
{
    Method mfname = class_getInstanceMethod([self class], @selector(fname));
    Method mlname = class_getInstanceMethod([self class], @selector(lname));
    
    method_exchangeImplementations(mfname, mlname);
}

- (void)log
{
    NSLog(@"\nmy first name: \t%@\nmy last name: \t%@", [self fname], [self lname]);
}


@end
