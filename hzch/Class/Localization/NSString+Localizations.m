//
//  NSString+Localizations.m
//  mail
//
//  Created by JiangChunhui on 14-8-9.
//  Copyright (c) 2014年 NetEase (Hangzhou) Network Co., Ltd. All rights reserved.
//

#import "NSString+Localizations.h"


@implementation NSString (Localizations)

- (NSString *)localizedString
{
    return NSLocalizedString(self, nil);
}

- (NSString *)localizedStringFromTable:(NSString*)tbl
{
    return NSLocalizedStringFromTable(self, tbl, nil);
}

- (NSString *)localizedString:(NSString*)comment
{
    return NSLocalizedString(self, comment);
}

- (NSString *)localizedStringFromTable:(NSString*)tbl comment:(NSString*)comment
{
    return NSLocalizedStringFromTable(self, tbl, comment);
}
@end
