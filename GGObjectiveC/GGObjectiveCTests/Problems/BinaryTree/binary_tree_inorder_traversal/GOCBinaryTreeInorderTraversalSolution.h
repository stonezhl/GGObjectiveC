//
//  GOCBinaryTreeInorderTraversalSolution.h
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/26/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class TreeNode;

@interface GOCBinaryTreeInorderTraversalSolution : NSObject
- (NSArray<NSNumber *> *)recursiveInorderTraversal:(TreeNode *)root;
- (NSArray<NSNumber *> *)iterativeInorderTraversal:(TreeNode *)root;
@end

NS_ASSUME_NONNULL_END
