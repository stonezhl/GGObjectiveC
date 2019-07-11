//
//  GOCBinaryTreeLevelOrderTraversalSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/5/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCBinaryTreeLevelOrderTraversalSolution.h"
#import "TreeNode.h"

@implementation GOCBinaryTreeLevelOrderTraversalSolution

- (NSArray<NSArray<NSNumber *> *> *)levelOrder:(TreeNode *)root {
    if (root == nil) {
        return @[];
    }
    NSMutableArray<NSArray<NSNumber *> *> *result = [NSMutableArray array];
    NSMutableArray<TreeNode *> *queue = [NSMutableArray arrayWithObject:root];
    while (queue.count > 0) {
        [result addObject:[queue valueForKey:@"val"]];
        NSInteger num = queue.count;
        for (NSInteger i = 0; i < num; i++) {
            TreeNode *node = [queue firstObject];
            [queue removeObjectAtIndex:0];
            if (node.left) {
                [queue addObject:node.left];
            }
            if (node.right) {
                [queue addObject:node.right];
            }
        }
    }
    return result.copy;
}

@end
