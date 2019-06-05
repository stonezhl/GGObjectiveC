//
//  GOCInsertIntoABinarySearchTreeSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/5/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCInsertIntoABinarySearchTreeSolution.h"
#import "TreeNode.h"

@implementation GOCInsertIntoABinarySearchTreeSolution

- (TreeNode *)insertIntoBST:(TreeNode *)root val:(NSInteger)val {
    TreeNode *node = root;
    while (node) {
        if (val < node.val) {
            if (node.left) {
                node = node.left;
            } else {
                node.left = [TreeNode nodeWithVal:val];
                return root;
            }
        } else {
            if (node.right) {
                node = node.right;
            } else {
                node.right = [TreeNode nodeWithVal:val];
                return root;
            }
        }
    }
    return nil;
}

@end
