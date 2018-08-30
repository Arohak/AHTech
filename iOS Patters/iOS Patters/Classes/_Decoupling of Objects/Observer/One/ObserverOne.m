//
//  ObserverOne.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "ObserverOne.h"

static NSString * const Message = @"broadcastMessage";
static NSInteger messageCount = 0;

@implementation ObserverOne

+ (void)test:(NSInteger)count
{
    [self addObserver];
    
    for (NSInteger i = 0; i < count; i++) {
        messageCount++;
        [self postNotification];
    }
}

+ (void)addObserver
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(update)
                                                 name:Message
                                               object:nil];
}

+ (void)postNotification
{
    NSNotification *broadCastMessage = [NSNotification notificationWithName:Message object:nil];
    [[NSNotificationCenter defaultCenter] postNotification:broadCastMessage];
}

+ (void)update
{
    NSString *text = [NSString stringWithFormat:@"%ld. Message updated", (long)messageCount];
    NSLog(@"%@", text);
}

@end
