//
//  Bridge.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "Bridge.h"
#import "MusicPlayer.h"
#import "CheapHeadphones.h"
#import "ExpensiveHeadphones.h"

@implementation Bridge

+ (void)test
{
    MusicPlayer *musicPlayer = [[MusicPlayer alloc] init];
    
    CheapHeadphones *cheap = [[CheapHeadphones alloc] init];
    musicPlayer.headPhones = cheap;
    [musicPlayer playMusic];
    
    ExpensiveHeadphones *expensiv = [[ExpensiveHeadphones alloc] init];
    musicPlayer.headPhones = expensiv;
    [musicPlayer playMusic];
}

@end
