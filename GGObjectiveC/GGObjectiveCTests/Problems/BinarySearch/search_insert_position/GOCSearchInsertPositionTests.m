//
//  GOCSearchInsertPositionTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/11/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCSearchInsertPositionSolution.h"

// https://leetcode.com/problems/search-insert-position/

@interface GOCSearchInsertPositionTests : XCTestCase

@end

@implementation GOCSearchInsertPositionTests

- (void)test_searchInsertPosition_1 {
    NSArray<NSNumber *> *nums = @[@1, @3, @5, @6];
    NSNumber *target = @5;
    GOCSearchInsertPositionSolution *solution = [[GOCSearchInsertPositionSolution alloc] init];
    NSInteger index = [solution searchInsertPositionOfTarget:target inNums:nums];
    XCTAssertEqual(index, 2);
}

- (void)test_searchInsertPosition_2 {
    NSArray<NSNumber *> *nums = @[@1, @3, @5, @6];
    NSNumber *target = @2;
    GOCSearchInsertPositionSolution *solution = [[GOCSearchInsertPositionSolution alloc] init];
    NSInteger index = [solution searchInsertPositionOfTarget:target inNums:nums];
    XCTAssertEqual(index, 1);
}

- (void)test_searchInsertPosition_3 {
    NSArray<NSNumber *> *nums = @[@1, @3, @5, @6];
    NSNumber *target = @7;
    GOCSearchInsertPositionSolution *solution = [[GOCSearchInsertPositionSolution alloc] init];
    NSInteger index = [solution searchInsertPositionOfTarget:target inNums:nums];
    XCTAssertEqual(index, 4);
}

- (void)test_searchInsertPosition_4 {
    NSArray<NSNumber *> *nums = @[@1, @3, @5, @6];
    NSNumber *target = @0;
    GOCSearchInsertPositionSolution *solution = [[GOCSearchInsertPositionSolution alloc] init];
    NSInteger index = [solution searchInsertPositionOfTarget:target inNums:nums];
    XCTAssertEqual(index, 0);
}

@end
