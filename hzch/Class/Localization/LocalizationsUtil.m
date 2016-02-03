//
//  LocalizationsUtil.m
//  mail
//
//  Created by JiangChunhui on 14-8-5.
//  Copyright (c) 2014年 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "LocalizationsUtil.h"

@implementation LocalizationsUtil

+ (void)runForEnglish:(void (^)())englishBlock chinese:(void (^)())chineseBlock
{
    NSString* localeLanguage = NSLocalizedString(@"global.localeLanguage", @"本地使用语言配置的类型 以便运行时判断配置文件类型");
    if([localeLanguage isEqualToString:@"en"]){
        if (englishBlock != nil) {
            englishBlock();
        }
    }
    else if ([localeLanguage isEqualToString:@"zh-Hans"]){
        if (chineseBlock != nil) {
            chineseBlock();
        }
    }
}

+ (void)runForEnglish:(void (^)())englishBlock
{
    return [self runForEnglish:englishBlock chinese:nil];
}

+ (void)runForChinese:(void (^)())chineseBlock
{
    return [self runForEnglish:nil chinese:chineseBlock];
}

@end
