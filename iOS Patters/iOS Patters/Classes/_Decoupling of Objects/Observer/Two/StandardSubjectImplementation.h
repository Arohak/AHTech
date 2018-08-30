//
//  StandardSubjectImplementation.h
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StandardSubject.h"

@interface StandardSubjectImplementation : NSObject <StandardSubject>

@property (nonatomic, strong) NSMutableSet *observerCollection;

- (void)changeValue:(NSString *)valueName andValue:(NSString *)newValue;

@end
