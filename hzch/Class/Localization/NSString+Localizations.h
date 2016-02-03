//
//  NSString+Localizations.h
//  mail
//
//  Created by JiangChunhui on 14-8-9.
//  Copyright (c) 2014年 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Localizations)

- (NSString *)localizedString;
- (NSString *)localizedStringFromTable:(NSString*)tbl;

- (NSString *)localizedString:(NSString*)comment;
- (NSString *)localizedStringFromTable:(NSString*)tbl comment:(NSString*)comment;
@end
