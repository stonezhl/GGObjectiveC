//
//  GOCFindPeakElementTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCFindPeakElementSolution.h"

// https://leetcode.com/problems/find-peak-element/

@interface GOCFindPeakElementTests : XCTestCase

@end

@implementation GOCFindPeakElementTests

- (void)test_findPeakElement_1 {
    NSArray<NSNumber *> *nums = @[@1, @2, @3, @1];
    GOCFindPeakElementSolution *solution = [[GOCFindPeakElementSolution alloc] init];
    NSInteger index = [solution findPeakElement:nums];
    XCTAssertEqual(index, 2);
}

- (void)test_findPeakElement_2 {
    NSArray<NSNumber *> *nums = @[@1, @2, @1, @3, @5, @6, @4];
    GOCFindPeakElementSolution *solution = [[GOCFindPeakElementSolution alloc] init];
    NSInteger index = [solution findPeakElement:nums];
    XCTAssertTrue(index == 1 || index == 5);
}

@end
