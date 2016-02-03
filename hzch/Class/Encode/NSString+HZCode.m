//
//  NSString+HZCode.m
//  hzch
//
//  Created by Jiang on 16/2/3.
//  Copyright © 2016年 hzch. All rights reserved.
//

#import "NSString+HZCode.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSString (HZCode)

- (NSString *)hzMD5
{
    const char *str = [self UTF8String];
    if (str == NULL) {
        str = "";
    }
    unsigned char r[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str, (CC_LONG)strlen(str), r);
    NSString *md5 = [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
                          r[0], r[1], r[2], r[3], r[4], r[5], r[6], r[7], r[8], r[9], r[10], r[11], r[12], r[13], r[14], r[15]];
    
    return md5;
}
@end
