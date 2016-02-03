//
//  JCHGCD.m
//  JCHProjects
//
//  Created by JiangChunhui on 14-8-12.
//  Copyright (c) 2014年 Mail_Mac. All rights reserved.
//

#import "JCHGCD.h"
@interface JCHGCD ()
@property (nonatomic,weak) NSString *data;
@end
@implementation JCHGCD
- (void)loadLocalData
{
    __weak typeof(self) weakSelf = self;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        // 原代码块二
        NSURL * url = [NSURL URLWithString:@"http://www.youdao.com"];
        NSError * error;
        NSString * data = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&error];
        if (data != nil) {
            // 原代码块三
            dispatch_async(dispatch_get_main_queue(), ^{
                weakSelf.data = data;
            });
        } else {
            NSLog(@"error when download:%@", error);
        }
    });
    
}
@end
