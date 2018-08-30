//
//  RavenAdapter.h
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BirdProtocol.h"
#import "Raven.h"

@interface RavenAdapter : NSObject <BirdProtocol>

@property (nonatomic, strong) Raven *raven;

- (id)initWithRaven:(Raven *)adaptee;

@end
