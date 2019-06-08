//
//  GOCTriangleTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/8/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCTriangleSolution.h"

// https://leetcode.com/problems/triangle/

@interface GOCTriangleTests : XCTestCase

@end

@implementation GOCTriangleTests

- (void)test_divide_and_conquer_triangle_1 {
    NSArray<NSArray<NSNumber *> *> *triangle = @[@[@2],
                                                 @[@3, @4],
                                                 @[@6, @5, @7],
                                                 @[@4, @1, @8, @3]];
    GOCTriangleSolution *solution = [[GOCTriangleSolution alloc] init];
    NSInteger minimumSum = [solution divideAndConquerMinimumTotal:triangle];
    XCTAssertEqual(minimumSum, 11);
}

- (void)test_dynamic_programming_triangle_1 {
    NSArray<NSArray<NSNumber *> *> *triangle = @[@[@2],
                                                 @[@3, @4],
                                                 @[@6, @5, @7],
                                                 @[@4, @1, @8, @3]];
    GOCTriangleSolution *solution = [[GOCTriangleSolution alloc] init];
    NSInteger minimumSum = [solution dynamicProgrammingMinimumTotal:triangle];
    XCTAssertEqual(minimumSum, 11);
}

- (void)test_bottom_up_triangle_1 {
    NSArray<NSArray<NSNumber *> *> *triangle = @[@[@2],
                                                 @[@3, @4],
                                                 @[@6, @5, @7],
                                                 @[@4, @1, @8, @3]];
    GOCTriangleSolution *solution = [[GOCTriangleSolution alloc] init];
    NSInteger minimumSum = [solution bottomUpMinimumTotal:triangle];
    XCTAssertEqual(minimumSum, 11);
}

- (void)test_top_down_triangle_1 {
    NSArray<NSArray<NSNumber *> *> *triangle = @[@[@2],
                                                 @[@3, @4],
                                                 @[@6, @5, @7],
                                                 @[@4, @1, @8, @3]];
    GOCTriangleSolution *solution = [[GOCTriangleSolution alloc] init];
    NSInteger minimumSum = [solution topDownMinimumTotal:triangle];
    XCTAssertEqual(minimumSum, 11);
}

@end
