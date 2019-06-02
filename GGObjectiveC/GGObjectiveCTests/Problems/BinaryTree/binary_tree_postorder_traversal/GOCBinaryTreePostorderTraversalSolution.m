//
//  GOCBinaryTreePostorderTraversalSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/2/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCBinaryTreePostorderTraversalSolution.h"
#import "TreeNode.h"

@implementation GOCBinaryTreePostorderTraversalSolution

- (NSArray<NSNumber *> *)recursivePostorderTraversal:(TreeNode *)root {
    if (root == nil) {
        return @[];
    }
    return [[[self recursivePostorderTraversal:root.left] arrayByAddingObjectsFromArray:[self recursivePostorderTraversal:root.right]] arrayByAddingObject:@(root.val)];
}

- (NSArray<NSNumber *> *)iterativePostorderTraversal:(TreeNode *)root {
    if (root == nil) {
        return @[];
    }
    NSMutableArray<NSNumber *> *result = [NSMutableArray array];
    NSMutableArray<TreeNode *> *stack = [NSMutableArray arrayWithObject:root];
    while (stack.count > 0) {
        TreeNode *node = stack.lastObject;
        [stack removeLastObject];
        [result addObject:@(node.val)];
        if (node.left) {
            [stack addObject:node.left];
        }
        if (node.right) {
            [stack addObject:node.right];
        }
    }
    for (NSInteger i = 0; i < result.count / 2; i++) {
        NSNumber *tmp = result[i];
        result[i] = result[result.count - 1 - i];
        result[result.count - 1 - i] = tmp;
    }
    return result.copy;
}

@end
