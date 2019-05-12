//
//  GOCFirstBadVersionTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/11/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCFirstBadVersionSolution.h"

// https://leetcode.com/problems/first-bad-version/

@interface GOCFirstBadVersionTests : XCTestCase <GOCFirstBadVersionSolutionDelegate>
@property (nonatomic, assign) NSInteger firstBadVersion;
@end

@implementation GOCFirstBadVersionTests

- (BOOL)isBadVersion:(NSInteger)version {
    if (version >= self.firstBadVersion) {
        return YES;
    }
    return NO;
}

- (void)test_firstBadVersion_1 {
    NSInteger n = 5;
    self.firstBadVersion = 4;
    GOCFirstBadVersionSolution *solution = [[GOCFirstBadVersionSolution alloc] init];
    solution.delegate = self;
    NSInteger firstBadVersion = [solution firstBadVersion:n];
    XCTAssertEqual(firstBadVersion, 4);
}

@end
