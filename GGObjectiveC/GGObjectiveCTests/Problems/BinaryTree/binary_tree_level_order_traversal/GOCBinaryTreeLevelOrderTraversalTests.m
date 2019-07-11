//
//  GOCBinaryTreeLevelOrderTraversalTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/5/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCBinaryTreeLevelOrderTraversalSolution.h"
#import "TreeNode.h"

// https://leetcode.com/problems/binary-tree-level-order-traversal/

@interface GOCBinaryTreeLevelOrderTraversalTests : XCTestCase

@end

@implementation GOCBinaryTreeLevelOrderTraversalTests

- (void)test_binary_tree_level_order_traversal_1 {
    NSArray *array = @[@3, @9, @20, [NSNull null], [NSNull null], @15, @7];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCBinaryTreeLevelOrderTraversalSolution *solution = [[GOCBinaryTreeLevelOrderTraversalSolution alloc] init];
    NSArray<NSArray<NSNumber *> *> *levelOrder = [solution levelOrder:root];
    NSArray<NSArray<NSNumber *> *> *expectedLevelOrder = @[@[@3],
                                                           @[@9, @20],
                                                           @[@15, @7]];
    XCTAssertEqualObjects(levelOrder, expectedLevelOrder);
}

@end
