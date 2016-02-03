//
//  LocalizationsUtil.h
//  mail
//
//  Created by JiangChunhui on 14-8-5.
//  Copyright (c) 2014年 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

/* 运行时判断使用的语言配置文件类型 */
@interface LocalizationsUtil : NSObject
+ (void)runForEnglish:(void (^)())englishBlock chinese:(void (^)())chineseBlock;

+ (void)runForEnglish:(void (^)())englishBlock;

+ (void)runForChinese:(void (^)())chineseBlock;

@end
