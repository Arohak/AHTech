//
//  main.m
//  Message Forwading
//
//  Created by Ara Hakobyan on 21/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"
#import "Human.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Subject *subject = [Subject new];
//        [subject resolveMethodDynamically];
        [subject forwardMessage];
//        [subject forwardMessageExistingMethod];
//        [subject forwardMessageChangeMethod];

//        Human *human = [[Human alloc] init];
//        [human log];
//        [human swizzling];
//        [human log];
    }
    
    return 0;
}
