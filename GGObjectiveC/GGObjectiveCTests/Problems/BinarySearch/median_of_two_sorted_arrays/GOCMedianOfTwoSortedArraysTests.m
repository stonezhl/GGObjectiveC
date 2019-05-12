//
//  GOCMedianOfTwoSortedArraysTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCMedianOfTwoSortedArraysSolution.h"

// https://leetcode.com/problems/median-of-two-sorted-arrays/

@interface GOCMedianOfTwoSortedArraysTests : XCTestCase

@end

@implementation GOCMedianOfTwoSortedArraysTests

- (void)test_medianOfTwoSortedArrays_1 {
    NSArray<NSNumber *> *nums1 = @[@1, @3];
    NSArray<NSNumber *> *nums2 = @[@2];
    GOCMedianOfTwoSortedArraysSolution *solution = [[GOCMedianOfTwoSortedArraysSolution alloc] init];
    CGFloat median = [solution findMedianOfTwoSortedArrays:nums1 and:nums2];
    XCTAssertEqual(median, 2.0);
}

- (void)test_medianOfTwoSortedArrays_2 {
    NSArray<NSNumber *> *nums1 = @[@1, @2];
    NSArray<NSNumber *> *nums2 = @[@3, @4];
    GOCMedianOfTwoSortedArraysSolution *solution = [[GOCMedianOfTwoSortedArraysSolution alloc] init];
    CGFloat median = [solution findMedianOfTwoSortedArrays:nums1 and:nums2];
    XCTAssertEqual(median, 2.5);
}

@end
