//
//  GOCLowestCommonAncestorOfABinarySearchTreeTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/3/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCLowestCommonAncestorOfABinarySearchTreeSolution.h"
#import "TreeNode.h"

// https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/

@interface GOCLowestCommonAncestorOfABinarySearchTreeTests : XCTestCase

@end

@implementation GOCLowestCommonAncestorOfABinarySearchTreeTests

- (void)test_lowest_common_ancestor_of_a_binary_search_tree_1 {
    NSArray *array = @[@6, @2, @8, @0, @4, @7, @9, [NSNull null], [NSNull null], @3, @5];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCLowestCommonAncestorOfABinarySearchTreeSolution *solution = [[GOCLowestCommonAncestorOfABinarySearchTreeSolution alloc] init];
    TreeNode *ancestor = [solution lowestCommonAncestor:root p:[TreeNode nodeWithVal:2] q:[TreeNode nodeWithVal:8]];
    XCTAssertEqual(ancestor.val, 6);
}

- (void)test_lowest_common_ancestor_of_a_binary_search_tree_2 {
    NSArray *array = @[@6, @2, @8, @0, @4, @7, @9, [NSNull null], [NSNull null], @3, @5];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCLowestCommonAncestorOfABinarySearchTreeSolution *solution = [[GOCLowestCommonAncestorOfABinarySearchTreeSolution alloc] init];
    TreeNode *ancestor = [solution lowestCommonAncestor:root p:[TreeNode nodeWithVal:2] q:[TreeNode nodeWithVal:4]];
    XCTAssertEqual(ancestor.val, 2);
}

@end
