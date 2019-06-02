//
//  GOCMaximumDepthOfBinaryTreeSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/2/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCMaximumDepthOfBinaryTreeSolution.h"
#import "TreeNode.h"

@implementation GOCMaximumDepthOfBinaryTreeSolution

- (NSInteger)maxDepth:(TreeNode *)root {
    if (root == nil) {
        return 0;
    }
    return 1 + MAX([self maxDepth:root.left], [self maxDepth:root.right]);
}

@end
