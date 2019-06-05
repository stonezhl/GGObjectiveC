//
//  GOCValidateBinarySearchTreeSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/5/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCValidateBinarySearchTreeSolution.h"
#import "TreeNode.h"

@implementation GOCValidateBinarySearchTreeSolution

- (BOOL)isValidBST:(TreeNode *)root {
    return [self isValidBST:root min:NSIntegerMin max:NSIntegerMax];
}

- (BOOL)isValidBST:(TreeNode *)root min:(NSInteger)min max:(NSInteger)max {
    if (root == nil) {
        return YES;
    }
    if (root.val <= min || root.val >= max) {
        return NO;
    }
    return [self isValidBST:root.left min:NSIntegerMin max:root.val] && [self isValidBST:root.right min:root.val max:NSIntegerMax];
}

@end
