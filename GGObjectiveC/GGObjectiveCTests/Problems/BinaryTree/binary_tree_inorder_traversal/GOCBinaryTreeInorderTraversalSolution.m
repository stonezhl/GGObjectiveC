//
//  GOCBinaryTreeInorderTraversalSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/26/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCBinaryTreeInorderTraversalSolution.h"
#import "TreeNode.h"

@implementation GOCBinaryTreeInorderTraversalSolution

- (NSArray<NSNumber *> *)recursiveInorderTraversal:(TreeNode *)root {
    if (root == nil) {
        return @[];
    }
    return [[[self recursiveInorderTraversal:root.left] arrayByAddingObject:@(root.val)] arrayByAddingObjectsFromArray:[self recursiveInorderTraversal:root.right]];
}

- (NSArray<NSNumber *> *)iterativeInorderTraversal:(TreeNode *)root {
    NSMutableArray<NSNumber *> *result = [NSMutableArray array];
    NSMutableArray<TreeNode *> *stack = [NSMutableArray array];
    TreeNode *node = root;
    while (stack.count > 0 || node) {
        if (node) {
            [stack addObject:node];
            node = node.left;
        } else {
            TreeNode *top = stack.lastObject;
            [stack removeLastObject];
            [result addObject:@(top.val)];
            node = top.right;
        }
    }
    return result.copy;
}

@end
