//
//  GOCPermutationsTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCPermutationsSolution.h"

// https://leetcode.com/problems/permutations/

@interface GOCPermutationsTests : XCTestCase

@end

@implementation GOCPermutationsTests

- (void)test_permutations_1 {
    NSArray<NSNumber *> *nums = @[@1, @2, @3];
    GOCPermutationsSolution *solution = [[GOCPermutationsSolution alloc] init];
    NSArray<NSArray<NSNumber *> *> *ansPermutations = [solution permute:nums];
    NSArray<NSArray<NSNumber *> *> *expectedPermutations = @[@[@1, @2, @3],
                                                             @[@1, @3, @2],
                                                             @[@2, @1, @3],
                                                             @[@2, @3, @1],
                                                             @[@3, @1, @2],
                                                             @[@3, @2, @1]];
    XCTAssertEqualObjects([NSSet setWithArray:ansPermutations], [NSSet setWithArray:expectedPermutations]);
}

@end
