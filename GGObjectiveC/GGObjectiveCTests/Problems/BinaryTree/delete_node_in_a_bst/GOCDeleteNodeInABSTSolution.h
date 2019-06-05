//
//  GOCDeleteNodeInABSTSolution.h
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/5/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class TreeNode;

@interface GOCDeleteNodeInABSTSolution : NSObject
- (TreeNode *)deleteNode:(TreeNode *)root key:(NSInteger)key;
@end

NS_ASSUME_NONNULL_END
