//
//  GOCBinaryTreePostorderTraversalSolution.h
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/2/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class TreeNode;

@interface GOCBinaryTreePostorderTraversalSolution : NSObject
- (NSArray<NSNumber *> *)recursivePostorderTraversal:(TreeNode *)root;
- (NSArray<NSNumber *> *)iterativePostorderTraversal:(TreeNode *)root;
@end

NS_ASSUME_NONNULL_END
