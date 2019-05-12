//
//  GOCSearchInRotatedSortedArraySolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCSearchInRotatedSortedArraySolution.h"

@implementation GOCSearchInRotatedSortedArraySolution

- (NSInteger)searchTarget:(NSNumber *)target inNums:(NSArray<NSNumber *> *)nums {
    NSInteger left = 0;
    NSInteger right = nums.count - 1;
    while (left <= right) {
        NSInteger mid = left + (right - left) / 2;
        if (nums[mid].integerValue < target.integerValue) {
            if (nums[mid].integerValue <= nums.lastObject.integerValue) {
                if (target.integerValue <= nums.lastObject.integerValue) {
                    left = mid + 1;
                } else {
                    right = mid - 1;
                }
            } else {
                left = mid + 1;
            }
        } else if (nums[mid].integerValue > target.integerValue) {
            if (nums[mid].integerValue <= nums.lastObject.integerValue) {
                right = mid - 1;
            } else {
                if (target.integerValue <= nums.lastObject.integerValue) {
                    left = mid + 1;
                } else {
                    right = mid - 1;
                }
            }
        } else {
            return mid;
        }
    }
    return -1;
}

@end
