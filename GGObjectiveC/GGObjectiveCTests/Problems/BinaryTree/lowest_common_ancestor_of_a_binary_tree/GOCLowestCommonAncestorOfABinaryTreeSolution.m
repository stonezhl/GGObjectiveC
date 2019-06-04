//
//  GOCLowestCommonAncestorOfABinaryTreeSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/4/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCLowestCommonAncestorOfABinaryTreeSolution.h"
#import "TreeNode.h"

@implementation GOCLowestCommonAncestorOfABinaryTreeSolution

- (TreeNode *)lowestCommonAncestor:(TreeNode *)root p:(TreeNode *)p q:(TreeNode *)q {
    if (root == nil || root.val == p.val || root.val == q.val) {
        return root;
    }
    TreeNode *left = [self lowestCommonAncestor:root.left p:p q:q];
    TreeNode *right = [self lowestCommonAncestor:root.right p:p q:q];
    if (left && right) {
        return root;
    } else if (left) {
        return left;
    } else if (right) {
        return right;
    } else {
        return nil;
    }
}

@end
