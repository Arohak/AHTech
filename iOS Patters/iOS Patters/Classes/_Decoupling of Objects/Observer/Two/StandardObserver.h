//
//  StandardObserver.h
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

@protocol StandardObserver <NSObject>

- (void)valueChanged:(NSString *)valueName newValue:(NSString *)newValue;

@end
