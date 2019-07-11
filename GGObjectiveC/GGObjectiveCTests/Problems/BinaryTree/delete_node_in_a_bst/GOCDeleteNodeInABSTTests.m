//
//  GOCDeleteNodeInABSTTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/5/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCDeleteNodeInABSTSolution.h"
#import "TreeNode.h"

// https://leetcode.com/problems/delete-node-in-a-bst/

@interface GOCDeleteNodeInABSTTests : XCTestCase

@end

@implementation GOCDeleteNodeInABSTTests

- (void)test_delete_node_in_a_bst_1 {
    NSArray *array = @[@5, @3, @6, @2, @4, [NSNull null], @7];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCDeleteNodeInABSTSolution *solution = [[GOCDeleteNodeInABSTSolution alloc] init];
    TreeNode *newRoot = [solution deleteNode:root key:3];
    NSArray *newArray = [newRoot arrayFromNode];
    NSArray *expectedArray = @[@5, @2, @6, [NSNull null], @4, [NSNull null], @7];
    XCTAssertEqualObjects(newArray, expectedArray);
}

@end
