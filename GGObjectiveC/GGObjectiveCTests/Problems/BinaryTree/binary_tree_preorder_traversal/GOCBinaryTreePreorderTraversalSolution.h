//
//  GOCBinaryTreePreorderTraversalSolution.h
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/26/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class TreeNode;

@interface GOCBinaryTreePreorderTraversalSolution : NSObject
- (NSArray<NSNumber *> *)recursivePreorderTraversal:(TreeNode *)root;
- (NSArray<NSNumber *> *)iterativePreorderTraversal:(TreeNode *)root;
@end

NS_ASSUME_NONNULL_END
