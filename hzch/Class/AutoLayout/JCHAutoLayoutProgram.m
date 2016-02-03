//
//  JCHAutoLayoutProgram.m
//  JCHProjects
//
//  Created by JiangChunhui on 14-8-7.
//  Copyright (c) 2014年 Mail_Mac. All rights reserved.
//

#import "JCHAutoLayoutProgram.h"

@interface JCHAutoLayoutProgram ()
@property (nonatomic,weak) UIView *subview;
@end

@implementation JCHAutoLayoutProgram
- (void)AutoLayoutProgram
{
    /* Using auto layout. */
    [self.subview setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    /* Add constraints. */
    [self.subview addConstraint:[NSLayoutConstraint constraintWithItem:self.subview
                                                                    attribute:NSLayoutAttributeWidth
                                                                    relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                                       toItem:nil
                                                                    attribute:NSLayoutAttributeNotAnAttribute
                                                                   multiplier:1.0
                                                                     constant:60.0]];
    [self.subview.superview addConstraint:[NSLayoutConstraint constraintWithItem:self.subview
                                                                attribute:NSLayoutAttributeTrailing
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.subview.superview
                                                                attribute:NSLayoutAttributeTrailing
                                                               multiplier:1.0
                                                                 constant:0.0]];
}

- (void)AutoLayoutVisualFormatLanguage
{
    UIView *view = [[UIView alloc] init];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    UIImageView *ratingControl = [[UIImageView alloc] init];
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    UIImageView *overlayButton = [[UIImageView alloc] init];
    imageView.translatesAutoresizingMaskIntoConstraints = NO;

    NSDictionary *views = NSDictionaryOfVariableBindings(imageView, ratingControl, overlayButton);
//  NSDictionary *views = @{@"imageView" : imageView, @"ratingControl" : ratingControl, @"overlayButton" : overlayButton};
    [view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"[imageView(>=150,<=200)]" options:0 metrics:nil views:views]];
    [view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[imageView]|" options:0 metrics:nil views:views]];
    [view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"[ratingControl(50)]-|" options:0 metrics:nil views:views]];
    [view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"[overlayButton]-60-|" options:0 metrics:nil views:views]];
    [view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[overlayButton]-[ratingControl]-|" options:0 metrics:nil views:views]];
    
    NSMutableArray *constraints = [NSMutableArray array];
    [constraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"|-(>=20)-[ratingControl]" options:0 metrics:nil views:views]];
    [constraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"|-(>=20)-[overlayButton]" options:0 metrics:nil views:views]];
    for (NSLayoutConstraint *constraint in constraints) {
        constraint.priority = UILayoutPriorityRequired - 1;
    }
    [view addConstraints:constraints];
}
@end
