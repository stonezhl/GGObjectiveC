//
//  GOCBinaryTreePostorderTraversalTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/2/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCBinaryTreePostorderTraversalSolution.h"
#import "TreeNode.h"

// https://leetcode.com/problems/binary-tree-postorder-traversal/

@interface GOCBinaryTreePostorderTraversalTests : XCTestCase

@end

@implementation GOCBinaryTreePostorderTraversalTests

- (void)test_recursive_postorder_traversal_1 {
    NSArray *array = @[@1, [NSNull null], @2, @3];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCBinaryTreePostorderTraversalSolution *solution = [[GOCBinaryTreePostorderTraversalSolution alloc] init];
    NSArray<NSNumber *> *ansArray = [solution recursivePostorderTraversal:root];
    NSArray<NSNumber *> *expectedArray = @[@3, @2, @1];
    XCTAssertEqualObjects(ansArray, expectedArray);
}

- (void)test_iterative_postorder_traversal_1 {
    NSArray *array = @[@1, [NSNull null], @2, @3];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCBinaryTreePostorderTraversalSolution *solution = [[GOCBinaryTreePostorderTraversalSolution alloc] init];
    NSArray<NSNumber *> *ansArray = [solution iterativePostorderTraversal:root];
    NSArray<NSNumber *> *expectedArray = @[@3, @2, @1];
    XCTAssertEqualObjects(ansArray, expectedArray);
}

@end
