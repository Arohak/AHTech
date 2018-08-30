//
//  BPAndroidPhoneBuilder.h
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AndroidPhone.h"

@interface BPAndroidPhoneBuilder : NSObject

@property (nonatomic, strong) AndroidPhone* _phone;

- (void)setOSVersion;
- (void)setName;
- (void)setCPUCodeName;
- (void)setRAMSize;
- (void)setOSVersionCode;
- (void)setLauncher;
- (AndroidPhone *)getPhone;

@end
