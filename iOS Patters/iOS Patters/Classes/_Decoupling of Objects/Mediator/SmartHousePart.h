//
//  SmartHousePart.h
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CentrallProcessor;

@interface SmartHousePart : NSObject

- (id)initWithCore:(CentrallProcessor *)processor;
- (void)numbersChanged;

@end
