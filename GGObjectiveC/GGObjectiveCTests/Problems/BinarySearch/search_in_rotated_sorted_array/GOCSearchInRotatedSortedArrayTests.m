//
//  GOCSearchInRotatedSortedArrayTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCSearchInRotatedSortedArraySolution.h"

// https://leetcode.com/problems/search-in-rotated-sorted-array/

@interface GOCSearchInRotatedSortedArrayTests : XCTestCase

@end

@implementation GOCSearchInRotatedSortedArrayTests

- (void)test_searchInRotatedSortedArray_1 {
    NSArray<NSNumber *> *nums = @[@4, @5, @6, @7, @0, @1, @2];
    NSNumber *target = @0;
    GOCSearchInRotatedSortedArraySolution *solution = [[GOCSearchInRotatedSortedArraySolution alloc] init];
    NSInteger index = [solution searchTarget:target inNums:nums];
    XCTAssertEqual(index, 4);
}

- (void)test_searchInRotatedSortedArray_2 {
    NSArray<NSNumber *> *nums = @[@4, @5, @6, @7, @0, @1, @2];
    NSNumber *target = @3;
    GOCSearchInRotatedSortedArraySolution *solution = [[GOCSearchInRotatedSortedArraySolution alloc] init];
    NSInteger index = [solution searchTarget:target inNums:nums];
    XCTAssertEqual(index, -1);
}

@end
