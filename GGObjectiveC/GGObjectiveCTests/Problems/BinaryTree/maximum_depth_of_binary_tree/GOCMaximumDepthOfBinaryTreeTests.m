//
//  GOCMaximumDepthOfBinaryTreeTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/2/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCMaximumDepthOfBinaryTreeSolution.h"
#import "TreeNode.h"

// https://leetcode.com/problems/maximum-depth-of-binary-tree/

@interface GOCMaximumDepthOfBinaryTreeTests : XCTestCase

@end

@implementation GOCMaximumDepthOfBinaryTreeTests

- (void)test_maximum_depth_of_binary_tree_1 {
    NSArray *array = @[@3, @9, @20, [NSNull null], [NSNull null], @15, @7];
    TreeNode *root = [TreeNode rootNodeWithArray:array];
    GOCMaximumDepthOfBinaryTreeSolution *solution = [[GOCMaximumDepthOfBinaryTreeSolution alloc] init];
    NSInteger depth = [solution maxDepth:root];
    XCTAssertEqual(depth, 3);
}

@end
