//
//  GOCUniquePathsTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/8/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCUniquePathsSolution.h"

// https://leetcode.com/problems/unique-paths/

@interface GOCUniquePathsTests : XCTestCase

@end

@implementation GOCUniquePathsTests

- (void)test_unique_paths_1 {
    GOCUniquePathsSolution *solution = [[GOCUniquePathsSolution alloc] init];
    NSInteger paths = [solution uniquePathsWithM:3 n:2];
    XCTAssertEqual(paths, 3);
}

- (void)test_unique_paths_2 {
    GOCUniquePathsSolution *solution = [[GOCUniquePathsSolution alloc] init];
    NSInteger paths = [solution uniquePathsWithM:7 n:3];
    XCTAssertEqual(paths, 28);
}

@end
