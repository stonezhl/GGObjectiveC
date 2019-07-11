//
//  GOCLowestCommonAncestorOfABinaryTreeTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/5/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCLowestCommonAncestorOfABinaryTreeSolution.h"
#import "TreeNode.h"

// https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/

@interface GOCLowestCommonAncestorOfABinaryTreeTests : XCTestCase

@end

@implementation GOCLowestCommonAncestorOfABinaryTreeTests

- (void)test_lowest_common_ancestor_of_a_binary_tree_1 {
    NSArray *array = @[@3, @5, @1, @6, @2, @0, @8, [NSNull null], [NSNull null], @7, @4];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCLowestCommonAncestorOfABinaryTreeSolution *solution = [[GOCLowestCommonAncestorOfABinaryTreeSolution alloc] init];
    TreeNode *ancestor = [solution lowestCommonAncestor:root p:[TreeNode nodeWithVal:5] q:[TreeNode nodeWithVal:1]];
    XCTAssertEqual(ancestor.val, 3);
}

- (void)test_lowest_common_ancestor_of_a_binary_tree_2 {
    NSArray *array = @[@3, @5, @1, @6, @2, @0, @8, [NSNull null], [NSNull null], @7, @4];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCLowestCommonAncestorOfABinaryTreeSolution *solution = [[GOCLowestCommonAncestorOfABinaryTreeSolution alloc] init];
    TreeNode *ancestor = [solution lowestCommonAncestor:root p:[TreeNode nodeWithVal:5] q:[TreeNode nodeWithVal:4]];
    XCTAssertEqual(ancestor.val, 5);
}

@end
