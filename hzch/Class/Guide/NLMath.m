//
//  NLMath.m
//  Newland
//
//  Created by Jiang on 16/1/6.
//  Copyright © 2016年 newland. All rights reserved.
//

#import "NLMath.h"

@implementation NLMath

+ (u_int32_t)random
{
    // stdlib
    return arc4random_uniform(UINT_MAX);
}

@end
