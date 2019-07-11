//
//  GOCSubsetsTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCSubsetsSolution.h"

// https://leetcode.com/problems/subsets/

@interface GOCSubsetsTests : XCTestCase

@end

@implementation GOCSubsetsTests

- (void)test_subsets_1 {
    NSArray<NSNumber *> *nums = @[@1, @2, @3];
    GOCSubsetsSolution *solution = [[GOCSubsetsSolution alloc] init];
    NSArray<NSArray<NSNumber *> *> *ansSubsets = [solution subsets:nums];
    NSArray<NSArray<NSNumber *> *> *expectedSubsets = @[@[@3],
                                                        @[@1],
                                                        @[@2],
                                                        @[@1, @2, @3],
                                                        @[@1, @3],
                                                        @[@2, @3],
                                                        @[@1, @2],
                                                        @[]];
    XCTAssertEqualObjects([NSSet setWithArray:ansSubsets], [NSSet setWithArray:expectedSubsets]);
}

@end
