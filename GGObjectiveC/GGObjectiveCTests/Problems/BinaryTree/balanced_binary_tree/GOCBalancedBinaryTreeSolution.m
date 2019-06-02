//
//  GOCBalancedBinaryTreeSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/2/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCBalancedBinaryTreeSolution.h"
#import "TreeNode.h"

@implementation GOCBalancedBinaryTreeSolution

- (BOOL)isBalanced:(TreeNode *)root {
    return [self depthOfTree:root] >= 0;
}

- (NSInteger)depthOfTree:(TreeNode *)node {
    if (node == nil) {
        return 0;
    }
    NSInteger left = [self depthOfTree:node.left];
    if (left < 0) {
        return -1;
    }
    NSInteger right = [self depthOfTree:node.right];
    if (right < 0) {
        return -1;
    }
    if (ABS(left - right) <= 1) {
        return 1 + MAX(left, right);
    } else {
        return -1;
    }
}

@end
