//
//  GOCFindMinimumInRotatedSortedArraySolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCFindMinimumInRotatedSortedArraySolution.h"

@implementation GOCFindMinimumInRotatedSortedArraySolution

- (NSInteger)findMinimum:(NSArray<NSNumber *> *)nums {
    NSInteger left = 0;
    NSInteger right = nums.count - 1;
    while (left < right) {
        NSInteger mid = left + (right - left) / 2;
        if (nums[mid].integerValue < nums.lastObject.integerValue) {
            right = mid;
        } else {
            left = mid + 1;
        }
    }
    return nums[left].integerValue;
}

@end
