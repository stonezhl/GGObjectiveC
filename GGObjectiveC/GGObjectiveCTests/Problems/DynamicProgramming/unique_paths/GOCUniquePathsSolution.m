//
//  GOCUniquePathsSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/8/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCUniquePathsSolution.h"

@implementation GOCUniquePathsSolution

- (NSInteger)uniquePathsWithM:(NSInteger)m n:(NSInteger)n {
    NSMutableDictionary<NSString *, NSNumber *> *dp = [NSMutableDictionary dictionary];
    for (NSInteger col = 0; col < n; col++) {
        NSString *key = [self keyForRow:0 col:col];
        dp[key] = @(1);
    }
    for (NSInteger row = 1; row < m; row++) {
        NSString *key = [self keyForRow:row col:0];
        dp[key] = @(1);
    }
    for (NSInteger row = 1; row < m; row++) {
        for (NSInteger col = 1; col < n; col++) {
            NSString *key = [self keyForRow:row col:col];
            NSString *topKey = [self keyForRow:row - 1 col:col];
            NSString *leftKey = [self keyForRow:row col:col - 1];
            dp[key] = @(dp[topKey].integerValue + dp[leftKey].integerValue);
        }
    }
    NSString *key = [self keyForRow:m - 1 col:n - 1];
    return dp[key].integerValue;
}

- (NSString *)keyForRow:(NSInteger)row col:(NSInteger)col {
    return [NSString stringWithFormat:@"[%ld][%ld]", row, col];
}

@end
