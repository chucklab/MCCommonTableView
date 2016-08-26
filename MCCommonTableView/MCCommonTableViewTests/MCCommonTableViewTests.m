//
//  MCCommonTableViewTests.m
//  MCCommonTableViewTests
//
//  Created by Chao Ma on 08/25/2016.
//  Copyright © 2016 iMegatron's Lab. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MCCommonTableView.h"

@interface MCCommonTableViewTests : XCTestCase

@end

@implementation MCCommonTableViewTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testNormal {
    MCCommonTableView *tableView = [MCCommonTableView tableViewWithFrame:CGRectMake(0, 0, 1, 1)];
    XCTAssert(tableView);
    tableView.dataMap = @{
                          @"Day One" : @{
                                  @"1. Normal" : ^(){ NSLog(@"Normal, tapped."); },
                                  @"2. Multi lines" : ^(){ NSLog(@"Multi, tapped."); },
                                  @"3. Long single line" : ^(){ NSLog(@"Long, tapped."); },
                                  @"4. Very long text" : ^(){ NSLog(@"Very, tapped."); },
                                  @"5. No message" : ^(){ NSLog(@"No, tapped."); }
                                  },
                          @"Day two" : @{
                                  @"1. Normal" : ^(){ NSLog(@"Normal, tapped."); },
                                  @"2. Multi lines" : ^(){ NSLog(@"Multi, tapped."); },
                                  @"3. Long single line" : ^(){ NSLog(@"Long, tapped."); },
                                  @"4. Very long text" : ^(){ NSLog(@"Very, tapped."); },
                                  @"5. No message" : ^(){ NSLog(@"No, tapped."); }
                                  }
                          };
    XCTAssert(tableView);
}

@end
