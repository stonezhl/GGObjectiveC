//
//  TreeNode.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/15/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "TreeNode.h"

@implementation TreeNode

+ (nullable instancetype)rootNodeWithArray:(NSArray *)array {
    NSMutableDictionary *nodes = [NSMutableDictionary dictionary];
    NSInteger slow = 0;
    NSInteger fast = 0;
    while (slow < array.count && fast < array.count) {
        // node
        TreeNode *node = nodes[@(slow)];
        if (node == nil) {
            node = [TreeNode nodeWithObject:array[slow]];
        }
        if (node) {
            nodes[@(slow)] = node;
        } else {
            slow = slow + 1;
            continue;
        }
        // left
        fast = fast + 1;
        if (fast >= array.count) {
            break;
        }
        TreeNode *left = [TreeNode nodeWithObject:array[fast]];
        if (left) {
            node.left = left;
            nodes[@(fast)] = left;
        }
        // right
        fast = fast + 1;
        if (fast >= array.count) {
            break;
        }
        TreeNode *right = [TreeNode nodeWithObject:array[fast]];
        if (right) {
            node.right = right;
            nodes[@(fast)] = right;
        }
        // slow
        slow = slow + 1;
    }
    return nodes[@(0)];
}

+ (nullable instancetype)nodeWithObject:(id)object {
    if ([object isKindOfClass:NSNumber.class]) {
        NSNumber *number = object;
        return [TreeNode nodeWithVal:number.integerValue];
    }
    return nil;
}

+ (instancetype)nodeWithVal:(NSInteger)val {
    return [[TreeNode alloc] initWithVal:val];
}

- (instancetype)initWithVal:(NSInteger)val {
    self = [super init];
    if (self) {
        _val = val;
    }
    return self;
}

@end
