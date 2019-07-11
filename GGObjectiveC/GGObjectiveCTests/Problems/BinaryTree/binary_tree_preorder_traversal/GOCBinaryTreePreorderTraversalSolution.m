//
//  GOCBinaryTreePreorderTraversalSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/26/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCBinaryTreePreorderTraversalSolution.h"
#import "TreeNode.h"

@implementation GOCBinaryTreePreorderTraversalSolution

- (NSArray<NSNumber *> *)recursivePreorderTraversal:(TreeNode *)root {
    if (root == nil) {
        return @[];
    }
    return [[@[@(root.val)] arrayByAddingObjectsFromArray:[self recursivePreorderTraversal:root.left]] arrayByAddingObjectsFromArray:[self recursivePreorderTraversal:root.right]];
}

- (NSArray<NSNumber *> *)iterativePreorderTraversal:(TreeNode *)root {
    NSMutableArray<NSNumber *> *result = [NSMutableArray array];
    NSMutableArray<TreeNode *> *stack = [NSMutableArray array];
    TreeNode *node = root;
    while (stack.count > 0 || node) {
        if (node) {
            [stack addObject:node];
            [result addObject:@(node.val)];
            node = node.left;
        } else {
            TreeNode *top = stack.lastObject;
            [stack removeLastObject];
            node = top.right;
        }
    }
    return result.copy;
}

@end
