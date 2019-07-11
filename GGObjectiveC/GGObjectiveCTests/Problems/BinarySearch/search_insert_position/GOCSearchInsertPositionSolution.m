//
//  GOCSearchInsertPositionSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/11/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCSearchInsertPositionSolution.h"

@implementation GOCSearchInsertPositionSolution

- (NSInteger)searchInsertPositionOfTarget:(NSNumber *)target inNums:(NSArray<NSNumber *> *)nums {
    NSInteger left = 0;
    NSInteger right = nums.count - 1;
    while (left <= right) {
        NSInteger mid = left + (right - left) / 2;
        if (nums[mid].integerValue < target.integerValue) {
            left = mid + 1;
        } else if (nums[mid].integerValue > target.integerValue) {
            right = mid - 1;
        } else {
            return mid;
        }
    }
    return left;
}

@end
