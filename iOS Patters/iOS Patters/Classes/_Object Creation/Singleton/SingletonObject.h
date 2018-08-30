//
//  SingletonObject.h
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonObject : NSObject

@property (nonatomic, weak) NSString *tempProperty;

+ (SingletonObject *)singleton;

@end
