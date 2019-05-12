//
//  GOCFindPeakElementSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCFindPeakElementSolution.h"

@implementation GOCFindPeakElementSolution

- (NSInteger)findPeakElement:(NSArray<NSNumber *> *)nums {
    NSInteger left = 0;
    NSInteger right = nums.count - 1;
    while (left < right) {
        NSInteger mid = left + (right - left) / 2;
        NSInteger midValue = nums[mid].integerValue;
        NSInteger leftValue = mid > 0 ? nums[mid - 1].integerValue : NSIntegerMin;
        NSInteger rightValue = mid < nums.count -1 ? nums[mid + 1].integerValue : NSIntegerMin;
        if (midValue > leftValue && midValue < rightValue) {
            left = mid + 1;
        } else if (midValue < leftValue && midValue > rightValue) {
            right = mid;
        } else if (midValue < leftValue && midValue < rightValue) {
            right = mid;
        } else {
            return mid;
        }
    }
    return left;
}

@end
