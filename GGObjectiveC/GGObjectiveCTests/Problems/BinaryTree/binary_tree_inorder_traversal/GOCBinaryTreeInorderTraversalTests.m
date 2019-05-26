//
//  GOCBinaryTreeInorderTraversalTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/26/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCBinaryTreeInorderTraversalSolution.h"
#import "TreeNode.h"

// https://leetcode.com/problems/binary-tree-inorder-traversal/

@interface GOCBinaryTreeInorderTraversalTests : XCTestCase

@end

@implementation GOCBinaryTreeInorderTraversalTests

- (void)test_recursive_inorder_traversal_1 {
    NSArray *array = @[@1, [NSNull null], @2, @3];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCBinaryTreeInorderTraversalSolution *solution = [[GOCBinaryTreeInorderTraversalSolution alloc] init];
    NSArray<NSNumber *> *ansArray = [solution recursiveInorderTraversal:root];
    NSArray<NSNumber *> *expectedArray = @[@1, @3, @2];
    XCTAssertEqualObjects(ansArray, expectedArray);
}

- (void)test_iterative_inorder_traversal_1 {
    NSArray *array = @[@1, [NSNull null], @2, @3];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCBinaryTreeInorderTraversalSolution *solution = [[GOCBinaryTreeInorderTraversalSolution alloc] init];
    NSArray<NSNumber *> *ansArray = [solution iterativeInorderTraversal:root];
    NSArray<NSNumber *> *expectedArray = @[@1, @3, @2];
    XCTAssertEqualObjects(ansArray, expectedArray);
}

@end
