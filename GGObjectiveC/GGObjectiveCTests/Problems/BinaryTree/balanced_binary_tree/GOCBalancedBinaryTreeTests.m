//
//  GOCBalancedBinaryTreeTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/2/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCBalancedBinaryTreeSolution.h"
#import "TreeNode.h"

// https://leetcode.com/problems/balanced-binary-tree/

@interface GOCBalancedBinaryTreeTests : XCTestCase

@end

@implementation GOCBalancedBinaryTreeTests

- (void)test_balanced_binary_tree_1 {
    NSArray *array = @[@3, @9, @20, [NSNull null], [NSNull null], @15, @7];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCBalancedBinaryTreeSolution *solution = [[GOCBalancedBinaryTreeSolution alloc] init];
    BOOL isBalanced = [solution isBalanced:root];
    XCTAssertEqual(isBalanced, YES);
}

- (void)test_balanced_binary_tree_2 {
    NSArray *array = @[@1, @2, @2, @3, @3, [NSNull null], [NSNull null], @4, @4];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCBalancedBinaryTreeSolution *solution = [[GOCBalancedBinaryTreeSolution alloc] init];
    BOOL isBalanced = [solution isBalanced:root];
    XCTAssertEqual(isBalanced, NO);
}

@end
