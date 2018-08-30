//
//  IPhoneFactory.h
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GenericIPhone.h"
#import "GenericIPad.h"

@interface IPhoneFactory : NSObject

- (GenericIPhone *)getIPhone;
- (GenericIPad *)getIPad;

@end
