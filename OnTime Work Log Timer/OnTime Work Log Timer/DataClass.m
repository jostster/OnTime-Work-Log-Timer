//
//  DataClass.m
//  OnTime Work Log Timer
//
//  Created by Brian Jost on 3/10/13.
//  Copyright (c) 2013 Brian Jost. All rights reserved.
//

#import "DataClass.h"

@implementation DataClass
// Get these values from OnTime
NSString * const kClientId = @"";
NSString * const kClientSecret = @"";
NSString * const kServiceName = @"TimeTracker";
NSString * const kKeychainName = @"OnTime Time Tracker";

static DataClass *instance = nil;


+(DataClass *)sharedInstance
{
    @synchronized(self)
    {
        if (instance == nil)
        {
            instance = [DataClass new];
        }
    }
    
    return instance;
}

@end
