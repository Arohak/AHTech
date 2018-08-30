//
//  StandardSubjectImplementation.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "StandardSubjectImplementation.h"

@interface StandardSubjectImplementation ()

@property (nonatomic, strong) NSString *value;
@property (nonatomic, strong) NSString *valueName;

@end

@implementation StandardSubjectImplementation

- (NSMutableSet *)observerCollection
{
    if (_observerCollection == nil) {
        _observerCollection = [[NSMutableSet alloc] init];
    }
    return _observerCollection;
}

- (void)changeValue:(NSString *)valueName andValue:(NSString *)newValue
{
    self.value = newValue;
    self.valueName = valueName;
    [self notifyObjects];
}

#pragma mark - StandardSubject -
- (void)addObserver:(id<StandardObserver>)observer
{
    [self.observerCollection addObject:observer];
}

- (void)removeObserver:(id<StandardObserver>)observer
{
    [self.observerCollection removeObject:observer];
}

- (void)notifyObjects
{
    for (id<StandardObserver> observer in self.observerCollection) {
        [observer valueChanged:self.valueName newValue:self.value];
    }
}

@end
