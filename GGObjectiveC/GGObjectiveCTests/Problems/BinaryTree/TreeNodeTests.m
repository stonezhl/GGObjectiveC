//
//  TreeNodeTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/25/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TreeNode.h"

@interface TreeNodeTests : XCTestCase

@end

@implementation TreeNodeTests

- (void)test_root_node_with_array_1 {
    NSArray *array = @[@1, [NSNull null], @2, @3];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    XCTAssertEqual(root.val, 1);
    XCTAssertNil(root.left);
    TreeNode *right = root.right;
    XCTAssertEqual(right.val, 2);
    XCTAssertEqual(right.left.val, 3);
    XCTAssertNil(right.left.left);
    XCTAssertNil(right.left.right);
    XCTAssertNil(right.right);
}

- (void)test_root_node_with_array_2 {
    NSArray *array = @[@3, @9, @20, [NSNull null], [NSNull null], @15, @7];
    TreeNode *node = [TreeNode rootNodeWithArray:array];
    XCTAssertEqual(node.val, 3);
    TreeNode *left = node.left;
    XCTAssertEqual(left.val, 9);
    XCTAssertNil(left.left);
    XCTAssertNil(left.right);
    TreeNode *right = node.right;
    XCTAssertEqual(right.val, 20);
    XCTAssertEqual(right.left.val, 15);
    XCTAssertNil(right.left.left);
    XCTAssertNil(right.left.right);
    XCTAssertEqual(right.right.val, 7);
    XCTAssertNil(right.right.left);
    XCTAssertNil(right.right.right);
}

@end
