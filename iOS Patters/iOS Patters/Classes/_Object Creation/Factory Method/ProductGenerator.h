//
//  ProductGenerator.h
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface ProductGenerator : NSObject

- (Product *)getProduct:(NSInteger)price;

@end
