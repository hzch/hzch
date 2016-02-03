//
//  NLCoreAnimation.m
//  Newland
//
//  Created by Jiang on 16/1/6.
//  Copyright © 2016年 newland. All rights reserved.
//

#import "NLCoreAnimation.h"
/**
 CALayer
 
 阴影，圆角，带颜色的边框
 3D变换
 非矩形范围
 透明遮罩
 多级非线性动画
 */


@implementation NLCoreAnimation
+ (void)transform
{
    UIView *view;
    view.layer.transform = CATransform3DScale(CATransform3DMakeTranslation(0, 0, 0), 0.8, 0.8, 1.0);
    view.transform = CGAffineTransformMakeTranslation(1.0f, 0.f);
}

+ (void)clipped
{
    UIView *view;
    // clipped to the bounds of the view
    view.clipsToBounds = YES;
    view.layer.masksToBounds = YES;
    
    // Don't be clear color
    view.opaque = YES;
    
}

/// UIView show image
+ (void)viewImage
{
    UIView *view;
    UIImage *image;
    view.layer.contents = (__bridge id)image.CGImage;
    view.layer.contentsGravity = kCAGravityResizeAspect;
}
@end
