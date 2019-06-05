//
//  GOCDeleteNodeInABSTSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/5/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCDeleteNodeInABSTSolution.h"
#import "TreeNode.h"

@implementation GOCDeleteNodeInABSTSolution

- (TreeNode *)deleteNode:(TreeNode *)root key:(NSInteger)key {
    if (root == nil) {
        return nil;
    }
    if (key < root.val) {
        root.left = [self deleteNode:root.left key:key];
    } else if (key > root.val) {
        root.right = [self deleteNode:root.right key:key];
    } else {
        if (root.left == nil) {
            return root.right;
        } else if (root.right == nil) {
            return root.left;
        }
        TreeNode *pre = [self previousNode:root];
        if (pre) {
            root.val = pre.val;
            root.left = [self deleteNode:root.left key:pre.val];
        }
    }
    return root;
}

- (TreeNode *)previousNode:(TreeNode *)node {
    NSMutableArray<TreeNode *> *stack = [NSMutableArray array];
    TreeNode *pre = node.left;
    while (pre) {
        [stack addObject:pre];
        pre = pre.right;
    }
    return stack.lastObject;
}

@end
