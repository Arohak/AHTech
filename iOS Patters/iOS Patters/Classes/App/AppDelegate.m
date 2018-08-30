//
//  AppDelegate.m
//  iOS Patters
//
//  Created by Ara Hakobyan on 20/07/2017.
//  Copyright © 2017 Ara Hakobyan. All rights reserved.
//

#import "AppDelegate.h"

#import "Prototype.h"
#import "FactoryMethod.h"
#import "AbstractFactory.h"
#import "Builder.h"
#import "SingletonObject.h"

#import "AdapterOne.h"
#import "AdapterTwo.h"
#import "Bridge.h"
#import "Facade.h"

#import "Mediator.h"
#import "ObserverOne.h"
#import "ObserverTwo.h"
#import "ObserverThree.h"

@interface AppDelegate ()

#pragma mark - declaration object creation methods -
- (void)prototype;
- (void)factoryMethod;
- (void)abstractFactory;
- (void)builder;
- (void)singleton;

#pragma mark - declaration interface qdaptation methods -
- (void)adapter;
- (void)bridge;
- (void)facade;

#pragma mark - declaration decoupling of objects methods -
- (void)mediator;
- (void)observer;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    //invoke object creation methods -
    [self prototype];
    [self factoryMethod];
    [self abstractFactory];
    [self builder];
    [self singleton];
    
    //invoke interface qdaptation methods -
    [self adapter];
    [self bridge];
    [self facade];
    
    //invoke decoupling of objects methods -
    [self mediator];
    [self observer];

    return YES;
}

#pragma mark -
#pragma mark - Test Object Creation -
#pragma mark -

- (void)prototype
{
    NSLog(@"\n\n**** resource in memory (the same person name) ****\n");
    [Prototype resourceInMemory];
    
    NSLog(@"\n\n**** resource copy (the diferent person name) ****\n");
    [Prototype resourceCopy];
}

- (void)factoryMethod
{
    NSLog(@"\n\n**** factory method ****\n");
    [FactoryMethod saveExpenses:50];
    [FactoryMethod saveExpenses:100];
    [FactoryMethod saveExpenses:150];
}

- (void)abstractFactory
{
    NSLog(@"\n\n**** abstract factory (Apple) ****\n");
    [AbstractFactory createFactory:false];
    
    NSLog(@"\n\n**** abstract factory (China) ****\n");
    [AbstractFactory createFactory:true];
}

- (void)builder
{
    NSLog(@"\n\n**** builder (low price) ****\n");
    [Builder createBuilder:true];
    
    NSLog(@"\n\n**** builder (high price) ****\n");
    [Builder createBuilder:false];
}

- (void)singleton
{
    NSLog(@"\n\n**** singleton (get temp property) ****\n");
    [[SingletonObject singleton] setTempProperty:@"Hello 2 You!"];
    NSLog(@"%@", [[SingletonObject singleton] tempProperty]);
}

#pragma mark -
#pragma mark - Test Interface Adaptation -
#pragma mark -

- (void)adapter
{
    NSLog(@"\n\n**** adapter one ****\n");
    [AdapterOne test];
    
    NSLog(@"\n\n**** adapter two ****\n");
    [AdapterTwo test];
}

- (void)bridge
{
    NSLog(@"\n\n**** bridge ****\n");
    [Bridge test];
}

- (void)facade
{
    NSLog(@"\n\n**** facade ****\n");
    [Facade test];
}

#pragma mark -
#pragma mark - Test Decoupling of Objects -
#pragma mark -

- (void)mediator
{
    NSLog(@"\n\n**** mediator ****\n");
    [Mediator test];
}

- (void)observer
{
    NSLog(@"\n\n**** observer one NSNotification ****\n");
    [ObserverOne test:3];
    
    NSLog(@"\n\n**** observer two Custom Observer ****\n");
    [ObserverTwo test];
    
    NSLog(@"\n\n**** observer three KVO ****\n");
    [[ObserverThree new] test];
}

@end
