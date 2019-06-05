//
//  GOCValidateBinarySearchTreeTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/5/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCValidateBinarySearchTreeSolution.h"
#import "TreeNode.h"

// https://leetcode.com/problems/validate-binary-search-tree/

@interface GOCValidateBinarySearchTreeTests : XCTestCase

@end

@implementation GOCValidateBinarySearchTreeTests

- (void)test_validate_binary_search_tree_1 {
    NSArray *array = @[@2, @1, @3];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCValidateBinarySearchTreeSolution *solution = [[GOCValidateBinarySearchTreeSolution alloc] init];
    BOOL valid = [solution isValidBST:root];
    XCTAssertEqual(valid, YES);
}

- (void)test_validate_binary_search_tree_2 {
    NSArray *array = @[@5, @1, @4, [NSNull null], [NSNull null], @3, @6];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCValidateBinarySearchTreeSolution *solution = [[GOCValidateBinarySearchTreeSolution alloc] init];
    BOOL valid = [solution isValidBST:root];
    XCTAssertEqual(valid, NO);
}

@end
