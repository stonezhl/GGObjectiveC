//
//  GOCLowestCommonAncestorOfABinarySearchTreeSolution.h
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/3/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class TreeNode;

@interface GOCLowestCommonAncestorOfABinarySearchTreeSolution : NSObject
- (TreeNode *)lowestCommonAncestor:(TreeNode *)root p:(TreeNode *)p q:(TreeNode *)q;
@end

NS_ASSUME_NONNULL_END
