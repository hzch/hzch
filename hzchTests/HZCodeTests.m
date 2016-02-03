//
//  HZCodeTests.m
//  hzch
//
//  Created by Jiang on 16/2/3.
//  Copyright © 2016年 hzch. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+HZCode.h"

@interface HZCodeTests : XCTestCase

@end

@implementation HZCodeTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    NSString *string = @"19600101";
    NSString *task = @"";
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyyMMdd"];
    NSDate *date = [dateFormatter dateFromString:string];
    while (NSOrderedAscending == [date compare:[NSDate date]]) {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyyMMdd"];
        task = [dateFormatter stringFromDate:date];
        if ([[[task hzMD5] uppercaseString] isEqualToString:@"7E38890B870934B126F66857ED6B57B9"]) {
            break;
        }
        date = [date dateByAddingTimeInterval:24*60*60];
    }
    
    NSLog(@"%@",task);
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
