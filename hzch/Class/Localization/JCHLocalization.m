//
//  JCHLocalization.m
//  JCHProjects
//
//  Created by JiangChunhui on 14-8-13.
//  Copyright (c) 2014年 Mail_Mac. All rights reserved.
//

#import "JCHLocalization.h"
#import "NSString+Localizations.h"
#import "JCHAutoLayoutProgram.h"

@implementation JCHLocalization
- (void)localization
{
    NSString *localized = @"English".localizedString;
    localized = @"JCH.Localization.English".localizedString;
    
    localized = [@"JCH.Localization.English" localizedStringFromTable:@"Localizable"];
    
    localized = [@"JCH.Localization.English" localizedString:@"comment"];
}

- (void)localizationForXib
{
    UIView* viewFromXib;
    [viewFromXib sizeToFit];
    JCHAutoLayoutProgram* autoLayout;
    [autoLayout AutoLayoutProgram];
}

- (void)localizationForResources
{
    UIImage* image = [UIImage imageNamed:@"image.jpg"];
    NSLog(@"%@",image);
}
@end
