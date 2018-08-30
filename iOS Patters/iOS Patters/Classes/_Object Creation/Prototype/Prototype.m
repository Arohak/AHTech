//
//  Prototype.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "Prototype.h"
#import "Person.h"

@implementation Prototype

+ (void)resourceInMemory
{
    Person *firstPerson = [[Person alloc] init];
    firstPerson.name = @"Dima";
    firstPerson.surname = @"Surname";
    
    Person *secondPerson = firstPerson;
    NSLog(@"First Person name = %@ and surname = %@", firstPerson.name, firstPerson.surname);
    secondPerson.name = @"Roma";
    
    NSLog(@"Second Person name = %@ and surname = %@", secondPerson.name, secondPerson.surname);
    NSLog(@"First Person name = %@ and surname = %@", firstPerson.name, firstPerson.surname);
}

+ (void)resourceCopy
{
    Person *firstPerson = [[Person alloc] init];
    firstPerson.name = @"Dima";
    firstPerson.surname = @"Surname";
    
    Person *secondPerson = firstPerson.copy;
    NSLog(@"First Person name = %@ and surname = %@", firstPerson.name, firstPerson.surname);
    secondPerson.name = @"Roma";
    
    NSLog(@"Second Person name = %@ and surname = %@", secondPerson.name, secondPerson.surname);
    NSLog(@"First Person name = %@ and surname = %@", firstPerson.name, firstPerson.surname);
}

@end
