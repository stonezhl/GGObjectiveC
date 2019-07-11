//
//  GOCSearchA2DMatrixSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCSearchA2DMatrixSolution.h"

@implementation GOCSearchA2DMatrixSolution

- (BOOL)searchTarget:(NSNumber *)target inMatrix:(NSArray<NSArray<NSNumber *> *> *)matrix {
    NSInteger m = matrix.count;
    if (m == 0) {
        return NO;
    }
    NSInteger n = matrix.firstObject.count;
    if (n == 0) {
        return NO;
    }
    NSInteger left = 0;
    NSInteger right = m * n - 1;
    while (left <= right) {
        NSInteger mid = left + (right - left) / 2;
        NSInteger row = mid / n;
        NSInteger col = mid % n;
        if (matrix[row][col].integerValue < target.integerValue) {
            left = mid + 1;
        } else if (matrix[row][col].integerValue > target.integerValue) {
            right = mid - 1;
        } else {
            return YES;
        }
    }
    return NO;
}

@end
