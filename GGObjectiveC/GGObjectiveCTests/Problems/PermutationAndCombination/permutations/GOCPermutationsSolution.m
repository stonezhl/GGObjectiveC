//
//  GOCPermutationsSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCPermutationsSolution.h"

@implementation GOCPermutationsSolution

- (NSArray<NSArray<NSNumber *> *> *)permute:(NSArray<NSNumber *> *)nums {
    NSMutableArray<NSArray<NSNumber *> *> * result = [NSMutableArray array];
    [self recurPermute:nums path:[NSMutableArray array] result:result];
    return [result copy];
}

- (void)recurPermute:(NSArray<NSNumber *> *)nums path:(NSMutableArray<NSNumber *> *)path result:(NSMutableArray<NSArray<NSNumber *> *> *)result {
    if (path.count == nums.count) {
        [result addObject:[path copy]];
        return;
    }
    NSMutableArray<NSNumber *> *left = [nums mutableCopy];
    [left removeObjectsInArray:path];
    for (NSNumber *number in left) {
        [path addObject:number];
        [self recurPermute:nums path:path result:result];
        [path removeLastObject];
    }
}

@end
