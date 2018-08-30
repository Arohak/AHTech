//
//  StandardSubject.h
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "StandardObserver.h"

@protocol StandardSubject <NSObject>

- (void)addObserver:(id<StandardObserver>)observer;
- (void)removeObserver:(id<StandardObserver>)observer;
- (void)notifyObjects;

@end
