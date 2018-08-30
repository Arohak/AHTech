//
//  Person.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)copyWithZone:(NSZone *)zone
{
    Person *copy = [[self class] allocWithZone:zone];
    copy.name = self.name;
    copy.age = self.age;
    copy.surname = self.surname;
    return copy;
}

@end
