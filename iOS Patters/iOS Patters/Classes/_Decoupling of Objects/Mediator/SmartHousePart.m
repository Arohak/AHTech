//
//  SmartHousePart.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "SmartHousePart.h"
#import "CentrallProcessor.h"

@interface SmartHousePart ()

@property (nonatomic, strong) CentrallProcessor *processor;

@end

@implementation SmartHousePart

- (id)initWithCore:(CentrallProcessor *)processor
{
    self = [super init];
    self.processor = processor;
    
    return self;
}

- (void)numbersChanged
{
    [self.processor valueChanged:self];
}

@end
