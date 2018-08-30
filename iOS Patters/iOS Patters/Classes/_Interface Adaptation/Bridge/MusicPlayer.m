//
//  MusicPlayer.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "MusicPlayer.h"

@implementation MusicPlayer

- (void)playMusic
{
    [self.headPhones playBassSound];
    [self.headPhones playSimpleSound];
}

@end
