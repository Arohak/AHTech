//
//  Subject.m
//  Message Forwading
//
//  Created by Ara Hakobyan on 21/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "Subject.h"
#import "Product.h"

@interface Subject ()

@property (nonatomic, strong) Product *product;

@end

@implementation Subject

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.product = [Product new];
    }
    return self;
}

- (void)resolveMethodDynamically
{
    [self.product go];
}

- (void)forwardMessage
{
    [self log:@"forwardMessage"];
}

- (void)forwardMessageExistingMethod
{
    [self log:@"forwardMessageExistingMethod"];
}

- (void)forwardMessageChangeMethod
{
    [self.product addObject:@""];
}

- (void)log:(NSString *)msg
{
    [self.product log];
    [self.product addObject:msg];
    [self.product log];
}

@end
