//
//  Singleton.m
//  SharedInstance
//
//  Created by QinTuanye on 2019/1/29.
//  Copyright © 2019年 QinTuanye. All rights reserved.
//

#import "Singleton.h"

#define singleton_implementation(class) \
static class *_instance;    \
\
+ (id)allocWithZone:(struct _NSZone *)zone  \
{   \
    static dispatch_once_t onceToken;   \
    dispatch_once(&onceToken, ^{    \
        _instance = [super allocWithZone:zone]; \
    }); \
    return _instance;   \
}   \
\
+ (instancetype)shared##class   \
{   \
    if (_instance == nil) { \
        _instance = [[class alloc] init];   \
    }   \
    return _instance;   \
}

@implementation Singleton

@end
