//
//  PathFinder.h
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PathFinder : NSObject

- (void)findCurrentLocation;
- (void)findLocationToTravel:(NSString *) location;
- (void)makeARoute;

@end
