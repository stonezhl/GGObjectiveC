//
//  GOCTriangleSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/8/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCTriangleSolution.h"

@implementation GOCTriangleSolution

- (NSInteger)divideAndConquerMinimumTotal:(NSArray<NSArray<NSNumber *> *> *)triangle {
    return [self divideAndConquerMinimumSumFromRow:0 col:0 triangle:triangle];
}

- (NSInteger)divideAndConquerMinimumSumFromRow:(NSInteger)row col:(NSInteger)col triangle:(NSArray<NSArray<NSNumber *> *> *)triangle {
    if (row == triangle.count) {
        return 0;
    }
    NSInteger leftSum = [self divideAndConquerMinimumSumFromRow:row + 1 col:col triangle:triangle];
    NSInteger rightSum = [self divideAndConquerMinimumSumFromRow:row + 1 col:col + 1 triangle:triangle];
    return MIN(leftSum, rightSum) + triangle[row][col].integerValue;
}

- (NSInteger)dynamicProgrammingMinimumTotal:(NSArray<NSArray<NSNumber *> *> *)triangle {
    NSMutableDictionary<NSString *, NSNumber *> *dp = [NSMutableDictionary dictionary];
    return [self dynamicProgrammingMinimumSumFromRow:0 col:0 triangle:triangle dp:dp];
}

- (NSInteger)dynamicProgrammingMinimumSumFromRow:(NSInteger)row col:(NSInteger)col triangle:(NSArray<NSArray<NSNumber *> *> *)triangle dp:(NSMutableDictionary<NSString *, NSNumber *> *)dp {
    if (row == triangle.count) {
        return 0;
    }
    NSString *key = [self keyForRow:row col:col];
    if (dp[key]) {
        return dp[key].integerValue;
    }
    NSInteger leftSum = [self dynamicProgrammingMinimumSumFromRow:row + 1 col:col triangle:triangle dp:dp];
    NSInteger rightSum = [self dynamicProgrammingMinimumSumFromRow:row + 1 col:col + 1 triangle:triangle dp:dp];
    NSInteger sum = MIN(leftSum, rightSum) + triangle[row][col].integerValue;
    dp[key] = @(sum);
    return sum;
}

- (NSInteger)bottomUpMinimumTotal:(NSArray<NSArray<NSNumber *> *> *)triangle {
    NSMutableDictionary<NSString *, NSNumber *> *dp = [NSMutableDictionary dictionary];
    for (NSInteger col = 0; col < triangle.count; col++) {
        NSString *key = [self keyForRow:triangle.count - 1 col:col];
        dp[key] = triangle[triangle.count - 1][col];
    }
    for (NSInteger row = triangle.count - 2; row >= 0; row--) {
        for (NSInteger col = 0; col <= row; col++) {
            NSString *key = [self keyForRow:row col:col];
            NSString *leftKey = [self keyForRow:row + 1 col:col];
            NSString *rightKey = [self keyForRow:row + 1 col:col + 1];
            dp[key] = @(MIN(dp[leftKey].integerValue, dp[rightKey].integerValue) + triangle[row][col].integerValue);
        }
    }
    NSString *key = [self keyForRow:0 col:0];
    return dp[key].integerValue;
}

- (NSInteger)topDownMinimumTotal:(NSArray<NSArray<NSNumber *> *> *)triangle {
    NSMutableDictionary<NSString *, NSNumber *> *dp = [NSMutableDictionary dictionary];
    NSString *key = [self keyForRow:0 col:0];
    dp[key] = triangle[0][0];
    for (NSInteger row = 1; row < triangle.count; row++) {
        for (NSInteger col = 0; col <= row; col++) {
            NSString *key = [self keyForRow:row col:col];
            NSString *leftKey = [self keyForRow:row - 1 col:col - 1];
            NSString *rightKey = [self keyForRow:row - 1 col:col];
            if (col == 0) {
                dp[key] = @(dp[rightKey].integerValue + triangle[row][col].integerValue);
            } else if (col == row) {
                dp[key] = @(dp[leftKey].integerValue + triangle[row][col].integerValue);
            } else {
                dp[key] = @(MIN(dp[leftKey].integerValue, dp[rightKey].integerValue) + triangle[row][col].integerValue);
            }
        }
    }
    NSInteger minimumSum = NSIntegerMax;
    for (NSInteger col = 0; col < triangle.count; col++) {
        key = [self keyForRow:triangle.count - 1 col:col];
        minimumSum = MIN(minimumSum, dp[key].integerValue);
    }
    return minimumSum;
}

- (NSString *)keyForRow:(NSInteger)row col:(NSInteger)col {
    return [NSString stringWithFormat:@"[%ld][%ld]", row, col];
}

@end
