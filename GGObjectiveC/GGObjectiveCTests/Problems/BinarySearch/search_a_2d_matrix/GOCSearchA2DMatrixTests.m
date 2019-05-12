//
//  GOCSearchA2DMatrixTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCSearchA2DMatrixSolution.h"

// https://leetcode.com/problems/search-a-2d-matrix/

@interface GOCSearchA2DMatrixTests : XCTestCase

@end

@implementation GOCSearchA2DMatrixTests

- (void)test_searchA2DMatrix_1 {
    NSArray<NSArray<NSNumber *> *> *matrix = @[@[@1, @3, @5, @7],
                                               @[@10, @11, @16, @20],
                                               @[@23, @30, @34, @50]];
    NSNumber *target = @3;
    GOCSearchA2DMatrixSolution *solution = [[GOCSearchA2DMatrixSolution alloc] init];
    BOOL existed = [solution searchTarget:target inMatrix:matrix];
    XCTAssertTrue(existed);
}

- (void)test_searchA2DMatrix_2 {
    NSArray<NSArray<NSNumber *> *> *matrix = @[@[@1, @3, @5, @7],
                                               @[@10, @11, @16, @20],
                                               @[@23, @30, @34, @50]];
    NSNumber *target = @13;
    GOCSearchA2DMatrixSolution *solution = [[GOCSearchA2DMatrixSolution alloc] init];
    BOOL existed = [solution searchTarget:target inMatrix:matrix];
    XCTAssertFalse(existed);
}

@end
