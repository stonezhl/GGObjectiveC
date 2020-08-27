//
//  GOCBinaryTreeMaximumPathSumSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/2/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCBinaryTreeMaximumPathSumSolution.h"
#import "TreeNode.h"

@interface GOCBinaryTreeMaximumPathSumResult : NSObject
@property (nonatomic, assign) NSInteger max;
@property (nonatomic, assign) NSInteger sum;
+ (instancetype)resultWithMax:(NSInteger)max sum:(NSInteger)sum;
@end

@implementation GOCBinaryTreeMaximumPathSumResult

+ (instancetype)resultWithMax:(NSInteger)max sum:(NSInteger)sum {
    return [[GOCBinaryTreeMaximumPathSumResult alloc] initWithMax:max sum:sum];
}

- (instancetype)initWithMax:(NSInteger)max sum:(NSInteger)sum {
    self = [super init];
    if (self) {
        _max = max;
        _sum = sum;
    }
    return self;
}

@end

@implementation GOCBinaryTreeMaximumPathSumSolution

- (NSInteger)maxPathSum:(TreeNode *)root {
    return [self resultFromNode:root].max;
}

- (GOCBinaryTreeMaximumPathSumResult *)resultFromNode:(TreeNode *)node {
    if (node == nil) {
        return [GOCBinaryTreeMaximumPathSumResult resultWithMax:NSIntegerMin sum:NSIntegerMin];
    }
    GOCBinaryTreeMaximumPathSumResult *leftResult = [self resultFromNode:node.left];
    GOCBinaryTreeMaximumPathSumResult *rightResult = [self resultFromNode:node.right];
    NSInteger max = MAX(leftResult.sum + rightResult.sum + node.val,  MAX(MAX(leftResult.max, leftResult.sum), MAX(rightResult.max, rightResult.sum)));
    NSInteger sum = node.val + MAX(0, MAX(leftResult.sum, rightResult.sum));
    return [GOCBinaryTreeMaximumPathSumResult resultWithMax:max sum:sum];
}

@end

