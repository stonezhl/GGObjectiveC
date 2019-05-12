//
//  GOCSubsetsSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCSubsetsSolution.h"

@implementation GOCSubsetsSolution

- (NSArray<NSArray<NSNumber *> *> *)subsets:(NSArray<NSNumber *> *)nums {
    NSMutableArray<NSArray<NSNumber *> *> *result = [NSMutableArray array];
    [self recurSubsets:nums pos:0 path:[NSMutableArray array] result:result];
    return [result copy];
}

- (void)recurSubsets:(NSArray<NSNumber *> *)nums pos:(NSInteger)pos path:(NSMutableArray<NSNumber *> *)path result:(NSMutableArray<NSArray<NSNumber *> *> *)result {
    [result addObject:[path copy]];
    for (NSInteger i = pos; i < nums.count; i++) {
        [path addObject:nums[i]];
        [self recurSubsets:nums pos:i + 1 path:path result:result];
        [path removeLastObject];
    }
}

@end
