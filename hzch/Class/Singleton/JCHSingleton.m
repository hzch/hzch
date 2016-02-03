//
//  JCHSingleton.m
//  JCHProjects
//
//  Created by JiangChunhui on 14-8-7.
//  Copyright (c) 2014年 Mail_Mac. All rights reserved.
//

#import "JCHSingleton.h"

@implementation JCHSingleton

+ (instancetype)sharedInstance
{
    static JCHSingleton* manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    return manager;
}

@end
