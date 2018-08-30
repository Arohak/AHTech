//
//  GenericIPad.h
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GenericIPad : NSObject

@property (nonatomic, weak) NSString *osName;
@property (nonatomic, weak) NSString *productName;
@property (nonatomic, strong) NSNumber *screenSize;

@end
