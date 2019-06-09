//
//  GOCClimbingStairsTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/9/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCClimbingStairsSolution.h"

// https://leetcode.com/problems/climbing-stairs/

@interface GOCClimbingStairsTests : XCTestCase

@end

@implementation GOCClimbingStairsTests

- (void)test_climb_stairs_1 {
    GOCClimbingStairsSolution *solution = [[GOCClimbingStairsSolution alloc] init];
    NSInteger ways = [solution climbStairs:2];
    XCTAssertEqual(ways, 2);
}

- (void)test_climb_stairs_2 {
    GOCClimbingStairsSolution *solution = [[GOCClimbingStairsSolution alloc] init];
    NSInteger ways = [solution climbStairs:3];
    XCTAssertEqual(ways, 3);
}

@end
