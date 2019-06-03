//
//  GOCBinaryTreeMaximumPathSumTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/3/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCBinaryTreeMaximumPathSumSolution.h"
#import "TreeNode.h"

// https://leetcode.com/problems/binary-tree-maximum-path-sum/

@interface GOCBinaryTreeMaximumPathSumTests : XCTestCase

@end

@implementation GOCBinaryTreeMaximumPathSumTests

- (void)test_binary_tree_maximum_path_sum_1 {
    NSArray *array = @[@1, @2, @3];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCBinaryTreeMaximumPathSumSolution *solution = [[GOCBinaryTreeMaximumPathSumSolution alloc] init];
    NSInteger sum = [solution maxPathSum:root];
    XCTAssertEqual(sum, 6);
}

- (void)test_binary_tree_maximum_path_sum_2 {
    NSArray *array = @[@-10, @9, @20, [NSNull null], [NSNull null], @15, @7];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCBinaryTreeMaximumPathSumSolution *solution = [[GOCBinaryTreeMaximumPathSumSolution alloc] init];
    NSInteger sum = [solution maxPathSum:root];
    XCTAssertEqual(sum, 42);
}

@end
