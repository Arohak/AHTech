//
//  ObserverThree.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "ObserverThree.h"
#import "KVOSubject.h"
#import "KVOObserver.h"

static NSString *const PropertyName = @"changeableProperty";

@interface ObserverThree ()

@property (nonatomic, strong) KVOSubject *subject;
@property (nonatomic, strong) KVOObserver *observer;

@end

@implementation ObserverThree

- (void)dealloc
{
    [self.subject removeObserver:self.observer forKeyPath:PropertyName];
}

- (void)test
{
    self.subject = [[KVOSubject alloc] init];
    self.observer = [[KVOObserver alloc] init];
    
    [self.subject addObserver:self.observer
              forKeyPath:PropertyName
                 options:NSKeyValueObservingOptionNew
                 context:nil];
    
    [self.subject setValue:@"new value" forKey:PropertyName];
}

@end
