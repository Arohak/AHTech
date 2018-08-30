//
//  Product.m
//  Message Forwading
//
//  Created by Ara Hakobyan on 21/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "Product.h"
#import <objc/runtime.h>

@interface Product ()

@property (nonatomic, strong) NSMutableArray *array;
@property (nonatomic, strong) NSObject *target;

@end

@implementation Product

#pragma mark - init -
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.array = [NSMutableArray arrayWithArray:@[@"1", @"2"]];
    }
    
    return self;
}

- (void)log
{
    NSLog(@"\n\n**** array **** %@\n", self.array);
}

#pragma mark - resolve method dynamically -
+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    if (sel == NSSelectorFromString(@"go")) {
        class_addMethod([self class], sel, (IMP)dynamicMethodIMP, "");
        return YES;
    }
    
    return [super resolveInstanceMethod:sel];
}

void dynamicMethodIMP(id self, SEL _cmd)
{
    NSLog(@"\n\n**** method name **** %@", NSStringFromSelector(_cmd));
}

#pragma mark - forward message -
- (id)forwardingTargetForSelector:(SEL)aSelector
{
    return self.array;
}

#pragma mark - forward message existing method -
//- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
//{
//    return [self.array methodSignatureForSelector:aSelector];
//}
//
//- (void)forwardInvocation:(NSInvocation *)invocation
//{
//    SEL aSelector = [invocation selector];
//    if ([self.array respondsToSelector:aSelector]) {
//        [invocation invokeWithTarget:self.array];
//    } else {
//        [self doesNotRecognizeSelector:aSelector];
//    }
//}

#pragma mark - forward message change method -
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
{
    return [self.array methodSignatureForSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
    [invocation setSelector:NSSelectorFromString(@"forwardToAnotherMethod")];
    [invocation invoke];
}

- (void)forwardToAnotherMethod
{
    [self log];
    [self.array addObjectsFromArray:@[@"forwardToAnotherMethod", @"3", @"4"]];
    [self log];
}

@end
