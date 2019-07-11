//
//  GOCInsertIntoABinarySearchTreeTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/5/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCInsertIntoABinarySearchTreeSolution.h"
#import "TreeNode.h"

// https://leetcode.com/problems/insert-into-a-binary-search-tree/

@interface GOCInsertIntoABinarySearchTreeTests : XCTestCase

@end

@implementation GOCInsertIntoABinarySearchTreeTests

- (void)test_insert_into_a_binary_search_tree_1 {
    NSArray *array = @[@4, @2, @7, @1, @3];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCInsertIntoABinarySearchTreeSolution *solution = [[GOCInsertIntoABinarySearchTreeSolution alloc] init];
    TreeNode *newRoot = [solution insertIntoBST:root val:5];
    NSArray *newArray = [newRoot arrayFromNode];
    NSArray *expectedArray = @[@4, @2, @7, @1, @3, @5];
    XCTAssertEqualObjects(newArray, expectedArray);
}

@end
