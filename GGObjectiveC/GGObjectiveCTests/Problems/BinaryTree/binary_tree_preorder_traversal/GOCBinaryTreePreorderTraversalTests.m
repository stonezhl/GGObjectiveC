//
//  GOCBinaryTreePreorderTraversalTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/26/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCBinaryTreePreorderTraversalSolution.h"
#import "TreeNode.h"

// https://leetcode.com/problems/binary-tree-preorder-traversal/

@interface GOCBinaryTreePreorderTraversalTests : XCTestCase

@end

@implementation GOCBinaryTreePreorderTraversalTests

- (void)test_recursive_preorder_traversal_1 {
    NSArray *array = @[@1, [NSNull null], @2, @3];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCBinaryTreePreorderTraversalSolution *solution = [[GOCBinaryTreePreorderTraversalSolution alloc] init];
    NSArray<NSNumber *> *ansArray = [solution recursivePreorderTraversal:root];
    NSArray<NSNumber *> *expectedArray = @[@1, @2, @3];
    XCTAssertEqualObjects(ansArray, expectedArray);
}

- (void)test_iterative_preorder_traversal_1 {
    NSArray *array = @[@1, [NSNull null], @2, @3];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCBinaryTreePreorderTraversalSolution *solution = [[GOCBinaryTreePreorderTraversalSolution alloc] init];
    NSArray<NSNumber *> *ansArray = [solution iterativePreorderTraversal:root];
    NSArray<NSNumber *> *expectedArray = @[@1, @2, @3];
    XCTAssertEqualObjects(ansArray, expectedArray);
}

@end
