//
//  GOCMinimumPathSumTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/8/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCMinimumPathSumSolution.h"

// https://leetcode.com/problems/minimum-path-sum/

@interface GOCMinimumPathSumTests : XCTestCase

@end

@implementation GOCMinimumPathSumTests

- (void)test_minimum_path_sum_1 {
    NSArray<NSArray<NSNumber *> *> *grid = @[@[@1, @3, @1],
                                             @[@1, @5, @1],
                                             @[@4, @2, @1]];
    GOCMinimumPathSumSolution *solution = [[GOCMinimumPathSumSolution alloc] init];
    NSInteger minimumSum = [solution minPathSum:grid];
    XCTAssertEqual(minimumSum, 7);
}

@end
