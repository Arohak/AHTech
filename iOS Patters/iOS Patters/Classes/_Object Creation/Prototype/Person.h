//
//  Person.h
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>

@property (nonatomic,weak) NSString *name;
@property (nonatomic,weak) NSString *surname;
@property (nonatomic,weak) NSString *age;

-(id) copyWithZone:(NSZone *)zone;

@end
