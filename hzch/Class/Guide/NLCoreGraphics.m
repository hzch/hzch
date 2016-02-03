//
//  NLCoreGraphics.m
//  Newland
//
//  Created by Jiang on 16/1/6.
//  Copyright © 2016年 newland. All rights reserved.
//

#import "NLCoreGraphics.h"

@implementation NLCoreGraphics
+ (void)draw
{
    [[UIColor brownColor] set];       //设置上下文使用的颜色
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2.0f);
    CGContextMoveToPoint(context, 30.0f, 150.0f);  // 画笔移动到某点
    CGContextAddLineToPoint(context, 290.0f, 150.0f);
    CGContextStrokePath(context);       //执行绘制
}

@end
