//
//  JCHCATransform3D.m
//  JCHProjects
//
//  Created by JiangChunhui on 14-8-7.
//  Copyright (c) 2014年 Mail_Mac. All rights reserved.
//

#import "JCHCATransform3D.h"

@interface JCHCATransform3D ()
@property (nonatomic, weak) UIView* attachmentsView;
@end

@implementation JCHCATransform3D

- (void)CATransform3DMakeScale
{
    /* Zero point is center point. */
    CABasicAnimation *basic=[CABasicAnimation animationWithKeyPath:@"transform"];
    [basic setToValue:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.05, 1.05, 1.0)]];
    [basic setAutoreverses:YES];
    [basic setRepeatCount:1.0];
    [basic setDuration:0.25];
    [self.attachmentsView.layer addAnimation:basic forKey:@"transform"];
}

@end
