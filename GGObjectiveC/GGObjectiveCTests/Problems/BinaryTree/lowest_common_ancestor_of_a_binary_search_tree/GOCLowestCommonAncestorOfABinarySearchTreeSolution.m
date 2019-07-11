//
//  GOCLowestCommonAncestorOfABinarySearchTreeSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/3/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCLowestCommonAncestorOfABinarySearchTreeSolution.h"
#import "TreeNode.h"

@implementation GOCLowestCommonAncestorOfABinarySearchTreeSolution

- (TreeNode *)lowestCommonAncestor:(TreeNode *)root p:(TreeNode *)p q:(TreeNode *)q {
    NSInteger min = MIN(p.val, q.val);
    NSInteger max = MAX(p.val, q.val);
    TreeNode *node = root;
    while (node) {
        if (node.val < min) {
            node = node.right;
        } else if (node.val > max) {
            node = node.left;
        } else {
            return node;
        }
    }
    return node;
}

@end
