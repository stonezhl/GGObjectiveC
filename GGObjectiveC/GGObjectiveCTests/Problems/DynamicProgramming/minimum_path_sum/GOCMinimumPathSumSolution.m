//
//  GOCMinimumPathSumSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/8/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCMinimumPathSumSolution.h"

@implementation GOCMinimumPathSumSolution

- (NSInteger)minPathSum:(NSArray<NSArray<NSNumber *> *> *)grid {
    NSMutableDictionary<NSString *, NSNumber *> *dp = [NSMutableDictionary dictionary];
    NSInteger rowSum = 0;
    for (NSInteger row = 0; row < grid[0].count; row++) {
        rowSum += grid[row][0].integerValue;
        NSString *key = [self keyForRow:row col:0];
        dp[key] = @(rowSum);
    }
    NSInteger colSum = grid[0][0].integerValue;
    for (NSInteger col = 1; col < grid.count; col++) {
        colSum += grid[0][col].integerValue;
        NSString *key = [self keyForRow:0 col:col];
        dp[key] = @(colSum);
    }
    for (NSInteger row =  1; row < grid.count; row++) {
        for (NSInteger col = 1; col < grid[0].count; col++) {
            NSString *key = [self keyForRow:row col:col];
            NSString *topKey = [self keyForRow:row - 1 col:col];
            NSString *leftKey = [self keyForRow:row col:col - 1];
            dp[key] = @(MIN(dp[topKey].integerValue, dp[leftKey].integerValue) + grid[row][col].integerValue);
        }
    }
    NSString *key = [self keyForRow:grid.count - 1 col:grid[0].count - 1];
    return dp[key].integerValue;
}

- (NSString *)keyForRow:(NSInteger)row col:(NSInteger)col {
    return [NSString stringWithFormat:@"[%ld][%ld]", row, col];
}


@end
