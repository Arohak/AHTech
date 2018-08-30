//
//  Subject.h
//  Message Forwading
//
//  Created by Ara Hakobyan on 21/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Subject : NSObject

- (void)resolveMethodDynamically;
- (void)forwardMessage;
- (void)forwardMessageExistingMethod;
- (void)forwardMessageChangeMethod;

@end
