//
//  FactorySalesMan.h
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BPAndroidPhoneBuilder.h"

@interface FactorySalesMan : NSObject

@property (nonatomic, strong) BPAndroidPhoneBuilder *_builder;

- (void)setBulider:(BPAndroidPhoneBuilder *)aBuilder;
- (AndroidPhone *)getPhone;
- (void)constructPhone;

@end
