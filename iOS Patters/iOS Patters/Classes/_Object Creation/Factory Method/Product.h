//
//  Product.h
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property(nonatomic) NSInteger price;
@property(nonatomic, strong) NSString *name;

-(NSInteger)getTotalPrice:(NSInteger)sum;
-(void)saveObject;

@end
