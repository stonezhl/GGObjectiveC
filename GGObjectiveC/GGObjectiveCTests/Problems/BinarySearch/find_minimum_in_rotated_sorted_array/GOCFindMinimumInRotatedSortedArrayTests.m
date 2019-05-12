//
//  GOCFindMinimumInRotatedSortedArrayTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCFindMinimumInRotatedSortedArraySolution.h"

// https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/

@interface GOCFindMinimumInRotatedSortedArrayTests : XCTestCase

@end

@implementation GOCFindMinimumInRotatedSortedArrayTests

- (void)test_findMinimumInRotatedSortedArray_1 {
    NSArray<NSNumber *> *nums = @[@3, @4, @5, @1, @2];
    GOCFindMinimumInRotatedSortedArraySolution *solution = [[GOCFindMinimumInRotatedSortedArraySolution alloc] init];
    NSInteger minimum = [solution findMinimum:nums];
    XCTAssertEqual(minimum, 1);
}

@end
