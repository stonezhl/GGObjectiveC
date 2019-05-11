//
//  GOCBinarySearchTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/11/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCBinarySearchSolution.h"

// https://leetcode.com/problems/binary-search/

@interface GOCBinarySearchTests : XCTestCase

@end

@implementation GOCBinarySearchTests

- (void)test_binarySearch_1 {
    NSArray<NSNumber *> *nums = @[@-1,@0,@3,@5,@9,@12];
    NSNumber *target = @9;
    GOCBinarySearchSolution *solution = [[GOCBinarySearchSolution alloc] init];
    NSInteger index = [solution searchTarget:target inNums:nums];
    XCTAssertEqual(index, 4);
}

- (void)test_binarySearch_2 {
    NSArray<NSNumber *> *nums = @[@-1,@0,@3,@5,@9,@12];
    NSNumber *target = @2;
    GOCBinarySearchSolution *solution = [[GOCBinarySearchSolution alloc] init];
    NSInteger index = [solution searchTarget:target inNums:nums];
    XCTAssertEqual(index, -1);
}

@end
